const crypto      = require('crypto-js'); 
const key    = 'M@y@mangPiJJ!!';

exports.encrypt = (text) => {
    var encrypted = crypto.AES.encrypt(text, key).toString(crypto.enc.Utf8);
    console.log("Password Encrypted!");
    return encrypted;
}

exports.decrypt = (text) => {
    var decrypted = crypto.AES.decrypt(text, key).toString(crypto.enc.Utf8);
    console.log("Password Decrypted!");
    return decrypted;
}