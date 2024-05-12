
// Compressor
/**
 Challenge : Give a string with repeating characters (i.e "aaabb") write an algorithm that will compress the string down to the character,
 followed by the number of times it appears in the string (i.e."a3 b2").  If the compressed string is not smaller than original, return original.
 */


func compressor(_ str: String) -> String {
    let chars = Array(str)
    var count: Int = 0
    var compressed: String = ""

    for i in 0..<str.count {
        count += 1
       print(chars[i])
        if i + 1 >= str.count || (chars[i] != chars[i + 1]) {
            compressed.append(chars[i])
            compressed.append(String(count))
            count = 0
        }
//        print(i)

    }

    return compressed.count < str.count ? compressed : str
}

dump(compressor("aaabb")) // a3b2
