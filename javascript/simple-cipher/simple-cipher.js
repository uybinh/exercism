function newKey(randomChar) {
  let key = new Array(100).fill("a")
  return key.map(char => randomChar()).join("")
}

function randomChar() {
  const charCode = Math.floor(Math.random() * 26) + 97
  return String.fromCharCode(charCode)
}

function checkKey(key) {
  if (key.match(/^[a-z]+$/)) return
  throw new Error("Bad key")
}

function shiftChar(char, keyChar, type) {
  const direction = {
    encode: 1,
    decode: -1
  }
  const charIndex = char.charCodeAt(0) - 97
  const shiftKey = keyChar.charCodeAt(0) - 97
  const newCharCode = ((26 + charIndex + direction[type] * shiftKey) % 26) + 97
  return String.fromCharCode(newCharCode)
}

function repeatKey(key, string) {
  const times = Math.floor(string.length / key.length) + 1
  return key.repeat(times)
}

function shiftChars(string, key, type) {
  let newkey = repeatKey(key, string).split("")
  return string
    .split("")
    .map((char, index) => shiftChar(char, newkey[index], type))
    .join("")
}

class Cipher {
  constructor(key = newKey(randomChar)) {
    checkKey(key)
    this.key = key
  }

  encode(string) {
    return shiftChars(string, this.key, "encode")
  }
  decode(string) {
    return shiftChars(string, this.key, "decode")
  }
}

module.exports = Cipher
