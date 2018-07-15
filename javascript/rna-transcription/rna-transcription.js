const TRANSCRIBED = {
  "G": "C",
  "C": "G",
  "T": "A",
  "A": "U"
}

function DnaTranscriber(){

  this.toRna = dnaSequence => {
    return dnaSequence.split("").map( dna => {
      if (TRANSCRIBED[dna]) return TRANSCRIBED[dna];
      throw new Error('Invalid input');
    }).join("");
  }
}

module.exports = DnaTranscriber;