function DnaTranscriber(){
  let transcribed = {
    "G": "C",
    "C": "G",
    "T": "A",
    "A": "U"
  }

  this.toRna = function(dnaSequence){
    return dnaSequence.split("").map(function(dna){
      if (transcribed[dna]) return transcribed[dna];
      throw new Error('Invalid input');
    }).join("");
  }
}

module.exports = DnaTranscriber;