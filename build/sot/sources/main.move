/*
Scripts are executable entrypoints similar to a main function in a conventional language.
A script typically calls functions of a published module that perform updates to global storage.
 Scripts are ephemeral code snippets that are not published in global storage
*/
script {
    // import Vectorinmove module
use my_addrx::VectorInMove;
    fun main(){
        VectorInMove::vectorinmove();
    }
}