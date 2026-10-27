# Lua functions

> Source: <https://warcraft.wiki.gg/wiki/Lua_functions> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

World of Warcraft uses a modified version of [Lua](https://warcraft.wiki.gg/wiki/Lua "Lua") 5.1 that supports [taint](https://warcraft.wiki.gg/wiki/Secure_Execution_and_Tainting "Secure Execution and Tainting"). Notably, operating system and file I/O libraries are not present.

## Contents

- [1 Lua standard libraries](#Lua_standard_libraries)
  - [1.1 Math library](#Math_library)
  - [1.2 String library](#String_library)
  - [1.3 Table library](#Table_library)
  - [1.4 Coroutine library](#Coroutine_library)
  - [1.5 Bitwise library](#Bitwise_library)
- [2 See also](#See_also)
- [3 References](#References)

## Lua standard libraries

[assert](https://warcraft.wiki.gg/wiki/API:assert?action=edit&redlink=1 "API:assert (page does not exist)")(value\[, errormsg\]) - asserts a value evaluates to true. If it is, returns value, otherwise causes a Lua error to be thrown.

[collectgarbage](https://warcraft.wiki.gg/wiki/API:collectgarbage "API:collectgarbage")() - Forces garbage collection. (Added in 1.10.1)

[date](https://warcraft.wiki.gg/wiki/API:date "API:date")(format, time) - Returns the current date according to the user's machine.

[difftime](https://warcraft.wiki.gg/wiki/API:difftime?action=edit&redlink=1 "API:difftime (page does not exist)")(t1, t2) - Calculate the number of seconds between time t1 to time t2.

[error](https://warcraft.wiki.gg/wiki/API:error?action=edit&redlink=1 "API:error (page does not exist)")("error message",level) - Throws an error with the given error message. Use pcall() (see below) to catch errors.

[getfenv](https://warcraft.wiki.gg/wiki/API:getfenv "API:getfenv")(function or integer) - Returns the table representing the environment of the given function or stack level.

[getmetatable](https://warcraft.wiki.gg/wiki/API:getmetatable?action=edit&redlink=1 "API:getmetatable (page does not exist)")(obj, mtable) - Returns the metatable of the given table or userdata object.

[ipairs](https://warcraft.wiki.gg/wiki/API:ipairs "API:ipairs")(table) - Returns an iterator of type integer to traverse a table.

[loadstring](https://warcraft.wiki.gg/wiki/API:loadstring "API:loadstring")("Lua code") - Parse the string as Lua code and return it as a function reference.

[next](https://warcraft.wiki.gg/wiki/API:next "API:next")(table, index) - Returns the next key, value pair of the table, allowing you to walk over the table.

[newproxy](https://warcraft.wiki.gg/wiki/API:newproxy "API:newproxy")(boolean or proxy) - Creates a userdata with a sharable metatable.

[pairs](https://warcraft.wiki.gg/wiki/API:pairs "API:pairs")(table) - Returns an iterator to traverse a table.

[pcall](https://warcraft.wiki.gg/wiki/API:pcall "API:pcall")(func \[, ...\]) - Returns a boolean value indicating successful execution of func and the error message or func's results as additional values.

[print](https://warcraft.wiki.gg/wiki/API:print "API:print")(...) `#framexml` - Calls the current print output handler with the provided values; by default printing the values to the default chat frame.

[select](https://warcraft.wiki.gg/wiki/API:select "API:select")(index, list) - Returns the number of items in **list** or a subset of the list beginning at index and running to the end of the list.

[setfenv](https://warcraft.wiki.gg/wiki/API:setfenv "API:setfenv")(function or integer, table) - Sets the table representing the stack frame of the given function or stack level.

[setmetatable](https://warcraft.wiki.gg/wiki/API:setmetatable "API:setmetatable")(table, metatable) - Sets the metatable of the given table.

[time](https://warcraft.wiki.gg/wiki/API:time "API:time")(table) - Returns time in seconds since epoch (00:00:00 Jan 1 1970)

[type](https://warcraft.wiki.gg/wiki/API:type "API:type")(var) - Returns the type of variable as a string, "nil", "boolean", "number", "string", "table", "function", "thread" or "userdata". (The only Lua data types.)

[unpack](https://warcraft.wiki.gg/wiki/API:unpack "API:unpack")(table\[, start\]\[, end\]) - Returns the contents of its argument as separate values.

[xpcall](https://warcraft.wiki.gg/wiki/API:xpcall "API:xpcall")(func, err \[, ...\]) - Returns a boolean indicating successful execution of func and calls err on failure, additionally returning func's or err's results.

[rawequal](https://warcraft.wiki.gg/wiki/API:rawequal?action=edit&redlink=1 "API:rawequal (page does not exist)")(value, value) - Compares two values for equality without invoking metamethods.

[rawget](https://warcraft.wiki.gg/wiki/API:rawget?action=edit&redlink=1 "API:rawget (page does not exist)")(table, index) - Gets the value of a table item without invoking metamethods.

[rawset](https://warcraft.wiki.gg/wiki/API:rawset "API:rawset")(table, index, value) - Sets the value of a table item without invoking metamethods.

[tonumber](https://warcraft.wiki.gg/wiki/API:tonumber "API:tonumber")(arg\[, base\]) - Return a number if arg can be converted to number. Optional argument specifies the base to interpret the numeral. Bases other than 10 accept only unsigned integers.

[tostring](https://warcraft.wiki.gg/wiki/API:tostring "API:tostring")(arg) - Convert arg to a string.

[tostringall](https://warcraft.wiki.gg/wiki/API:tostringall?action=edit&redlink=1 "API:tostringall (page does not exist)")(...) `#wow` - Converts all arguments to strings and returns them in the same order that they were passed.

[gcinfo](https://warcraft.wiki.gg/wiki/API:gcinfo "API:gcinfo")() `#deprecated` - Returns the number of kB of add-on memory in use and the current garbage collection threshold (in kB). (Function gcinfo is deprecated; use `collectgarbage("count")` instead.)

### Math library

See [MathLibraryTutorial](http://lua-users.org/wiki/MathLibraryTutorial) for more info. *Function references or aliases like `abs` for `math.abs` are marked beside the function name.*

[math.abs](https://warcraft.wiki.gg/wiki/API:math.abs "API:math.abs") \|`abs`(value) : absoluteValue - Returns the absolute value of a number.

[math.ceil](https://warcraft.wiki.gg/wiki/API:math.ceil "API:math.ceil") \|`ceil`(value) : ceilValue - Returns the ceiling of a number.

[math.clamp](https://warcraft.wiki.gg/wiki/API:math.clamp "API:math.clamp") \|`Clamp`(value, minimum, maximum) : clampedValue `#wow` - Clamps a value to the inclusive range defined by the minimum and maximum values.

[math.exp](https://warcraft.wiki.gg/wiki/API:math.exp "API:math.exp") \|`exp`(value) : ex - Returns the value `e`^(`x`).

[math.floor](https://warcraft.wiki.gg/wiki/API:math.floor "API:math.floor") \|`floor`(value) : floorValue - Returns the floor of a number.

[math.fmod](https://warcraft.wiki.gg/wiki/API:math.fmod "API:math.fmod") \|`mod`(x, y) : fmodValue - Returns the remainder of the division of x by y that rounds the result (quotient) towards zero.

[math.frexp](https://warcraft.wiki.gg/wiki/API:math.frexp?action=edit&redlink=1 "API:math.frexp (page does not exist)") \|`frexp`(x) - Extracts mantissa and exponent from a floating point number.

[math.isfinite](https://warcraft.wiki.gg/wiki/API:math.isfinite "API:math.isfinite")(value) `#wow` - Returns whether a value is finite.

[math.isinf](https://warcraft.wiki.gg/wiki/API:math.isinf "API:math.isinf")(value) `#wow` - Returns whether a value is positive or negative infinity.

[math.isnan](https://warcraft.wiki.gg/wiki/API:math.isnan "API:math.isnan")(value) `#wow` - Returns whether a value is NaN.

[math.ldexp](https://warcraft.wiki.gg/wiki/API:math.ldexp?action=edit&redlink=1 "API:math.ldexp (page does not exist)") \|`ldexp`(value, exponent) - Loads exponent of a floating point number.

[math.lerp](https://warcraft.wiki.gg/wiki/API:math.lerp "API:math.lerp") \|`Lerp`(startValue, endValue, amount) `#wow` - Linearly interpolates between two values.

[math.log](https://warcraft.wiki.gg/wiki/API:math.log?action=edit&redlink=1 "API:math.log (page does not exist)") \|`log`(x) - Returns the natural logarithm of x.

[math.log10](https://warcraft.wiki.gg/wiki/API:math.log10?action=edit&redlink=1 "API:math.log10 (page does not exist)") \|`log10`(x) - Returns the base-10 logarithm of x.

[math.max](https://warcraft.wiki.gg/wiki/API:math.max?action=edit&redlink=1 "API:math.max (page does not exist)") \|`max`(x, ...) - Returns the maximum value among its arguments.

[math.min](https://warcraft.wiki.gg/wiki/API:math.min?action=edit&redlink=1 "API:math.min (page does not exist)") \|`min`(x, ...) - Returns the minimum value among its arguments.

[math.modf](https://warcraft.wiki.gg/wiki/API:math.modf?action=edit&redlink=1 "API:math.modf (page does not exist)")(x) : integral, fractional - Returns two numbers, the integral part of x and the fractional part of x.

[math.normalize](https://warcraft.wiki.gg/wiki/API:math.normalize "API:math.normalize")(value, minimum, maximum) `#wow` - Returns the relative position of a value within a range, where the minimum maps to 0 and the maximum maps to 1.

[math.pow](https://warcraft.wiki.gg/wiki/API:math.pow?action=edit&redlink=1 "API:math.pow (page does not exist)")(value) - Returns `x`^(`y`).

[math.random](https://warcraft.wiki.gg/wiki/API:math.random "API:math.random") \|`random`(\[\[lower,\] upper\]) - Returns a random number (optionally bounded integer value)

[math.remap](https://warcraft.wiki.gg/wiki/API:math.remap "API:math.remap")(value, sourceMinimum, sourceMaximum, destinationMinimum, destinationMaximum) `#wow` - Maps a value from one range to the corresponding position in another range.

[math.round](https://warcraft.wiki.gg/wiki/API:math.round "API:math.round") \|`Round`\|`RoundToSignificantDigits`(value \[, decimalPlaces\]) `#wow` - Rounds a value to the specified number of decimal places, with halfway values rounded away from zero.

[math.saturate](https://warcraft.wiki.gg/wiki/API:math.saturate "API:math.saturate") \|`Saturate`(value) `#wow` - Clamps a value to the inclusive range \[0, 1\].

[math.sign](https://warcraft.wiki.gg/wiki/API:math.sign "API:math.sign") \|`Sign`(value) `#wow` - Returns -1 for negative values, 0 for zero, and 1 for positive values.

[math.sqrt](https://warcraft.wiki.gg/wiki/API:math.sqrt?action=edit&redlink=1 "API:math.sqrt (page does not exist)") \|`sqrt`(x) - Returns the square root of x.

[math.wrap](https://warcraft.wiki.gg/wiki/API:math.wrap "API:math.wrap")(value, minimum, maximum) `#wow` - Wraps a value into the half-open range \[minimum, maximum).

[fastrandom](https://warcraft.wiki.gg/wiki/API:fastrandom "API:fastrandom")(\[\[lower,\] upper\]) `#wow` - Returns a random number; faster than math.random.

Trigonometric functions

[math.acos](https://warcraft.wiki.gg/wiki/API:math.acos?action=edit&redlink=1 "API:math.acos (page does not exist)")(x) - Returns the arc cosine of x (in radians).

[math.asin](https://warcraft.wiki.gg/wiki/API:math.asin?action=edit&redlink=1 "API:math.asin (page does not exist)")(x) - Returns the arc sine of x (in radians).

[math.atan](https://warcraft.wiki.gg/wiki/API:math.atan?action=edit&redlink=1 "API:math.atan (page does not exist)")(x) - Returns the arc tangent of x (in radians).

[math.atan2](https://warcraft.wiki.gg/wiki/API:math.atan2?action=edit&redlink=1 "API:math.atan2 (page does not exist)")(y, x) - Returns the arc tangent of y/x (in radians), but uses the signs of both parameters to find the quadrant of the result.

[math.cos](https://warcraft.wiki.gg/wiki/API:math.cos?action=edit&redlink=1 "API:math.cos (page does not exist)")(x) - Returns the cosine of x (assumed to be in radians).

[math.cosh](https://warcraft.wiki.gg/wiki/API:math.cosh?action=edit&redlink=1 "API:math.cosh (page does not exist)")(x) - Returns the hyperbolic cosine of x.

[math.deg](https://warcraft.wiki.gg/wiki/API:math.deg?action=edit&redlink=1 "API:math.deg (page does not exist)") \|`deg`(x) - Returns the angle x (given in radians) in degrees.

[math.rad](https://warcraft.wiki.gg/wiki/API:math.rad?action=edit&redlink=1 "API:math.rad (page does not exist)") \|`rad`(x) - Returns the angle x (given in degrees) in radians.

[math.sin](https://warcraft.wiki.gg/wiki/API:math.sin "API:math.sin")(x) - Returns the sine of x (assumed to be in radians).

[math.sinh](https://warcraft.wiki.gg/wiki/API:math.sinh?action=edit&redlink=1 "API:math.sinh (page does not exist)")(x) - Returns the hyperbolic sine of x.

[math.tan](https://warcraft.wiki.gg/wiki/API:math.tan?action=edit&redlink=1 "API:math.tan (page does not exist)")(x) - Returns the tangent of x (assumed to be in radians).

[math.tanh](https://warcraft.wiki.gg/wiki/API:math.tanh?action=edit&redlink=1 "API:math.tanh (page does not exist)")(x) - Returns the hyperbolic tangent of x.

The below functions are degree→radian conversion wrappers. Lua's standard math library works with radians, while Blizzard's version works with degrees.^([\[1\]](#cite_note-1))

[acos](https://warcraft.wiki.gg/wiki/API:acos?action=edit&redlink=1 "API:acos (page does not exist)") \|`math.deg(math.acos(x))` `#wow` - Returns the arc cosine of the value in degrees.

[asin](https://warcraft.wiki.gg/wiki/API:asin?action=edit&redlink=1 "API:asin (page does not exist)") \|`math.deg(math.asin(x))` `#wow` - Returns the arc sine of the value in degrees.

[atan](https://warcraft.wiki.gg/wiki/API:atan?action=edit&redlink=1 "API:atan (page does not exist)") \|`math.deg(math.atan(x))` `#wow` - Returns the arc tangent of the value in degrees.

[atan2](https://warcraft.wiki.gg/wiki/API:atan2?action=edit&redlink=1 "API:atan2 (page does not exist)") \|`math.deg(math.atan2(y`\|` x))` `#wow` - Returns the arc tangent of y/x in degrees.

[cos](https://warcraft.wiki.gg/wiki/API:cos?action=edit&redlink=1 "API:cos (page does not exist)") \|`math.cos(math.rad(x))` `#wow` - Returns the cosine of the degree value.

[sin](https://warcraft.wiki.gg/wiki/API:sin "API:sin") \|`math.sin(math.rad(x))` `#wow` - Returns the sine of the degree value.

[tan](https://warcraft.wiki.gg/wiki/API:tan?action=edit&redlink=1 "API:tan (page does not exist)") \|`math.tan(math.rad(x))` `#wow` - Returns the tangent of the degree value.

### String library

See [StringLibraryTutorial](http://lua-users.org/wiki/StringLibraryTutorial) for more info.

[string.byte](https://warcraft.wiki.gg/wiki/API:string.byte "API:string.byte") \|`strbyte`(string \[, index\]) - Returns the internal numeric code of the i-th character of string

[string.char](https://warcraft.wiki.gg/wiki/API:string.char "API:string.char") \|`strchar`(asciiCode \[, ...\]) - Returns a string with length equal to number of arguments, with each character assigned the internal code for that argument.

[string.concat](https://warcraft.wiki.gg/wiki/API:string.concat "API:string.concat") \|`strconcat`(...) `#wow` - Returns a concatenation of all number/string arguments passed.

[string.contains](https://warcraft.wiki.gg/wiki/API:string.contains "API:string.contains")(str, substring) `#wow` - Returns true if a string contains the specified literal substring.

[string.endswith](https://warcraft.wiki.gg/wiki/API:string.endswith "API:string.endswith")(str, suffix) `#wow` - Returns true if a string ends with the specified suffix.

[string.find](https://warcraft.wiki.gg/wiki/API:string.find "API:string.find") \|`strfind`(string, pattern \[, initpos \[, plain\]\]) - Look for match of pattern in string, optionally from specific location or using plain substring.

[string.format](https://warcraft.wiki.gg/wiki/API:string.format "API:string.format") \|`format`(formatstring \[, value \[, ...\]\]) - Return a formatted string using values passed in.

[string.gfind](https://warcraft.wiki.gg/wiki/API:string.gfind?action=edit&redlink=1 "API:string.gfind (page does not exist)")(s, pattern) `#obsolete` - throws an error if called, it is replaced by [string.gmatch](https://warcraft.wiki.gg/wiki/API:string.gmatch?action=edit&redlink=1 "API:string.gmatch (page does not exist)").

[string.gmatch](https://warcraft.wiki.gg/wiki/API:string.gmatch?action=edit&redlink=1 "API:string.gmatch (page does not exist)") \|`gmatch`(string, pattern) - This returns a pattern finding iterator. The iterator will search through the string passed looking for instances of the pattern you passed.

[string.gsub](https://warcraft.wiki.gg/wiki/API:string.gsub "API:string.gsub") \|`gsub`(string, pattern, replacement \[, limitCount\]) - Globally substitute pattern for replacement in string.

[string.join](https://warcraft.wiki.gg/wiki/API:string.join "API:string.join") \|`strjoin`(delimiter, str1 \[, ...\]) `#wow` - Join string arguments into a single string, separated by delimiter.

[string.len](https://warcraft.wiki.gg/wiki/API:string.len "API:string.len") \|`strlen`(string) - Return length of the string.

[string.lower](https://warcraft.wiki.gg/wiki/API:string.lower "API:string.lower") \|`strlower`(string) - Return string with all upper case changed to lower case.

[string.ltrim](https://warcraft.wiki.gg/wiki/API:string.ltrim "API:string.ltrim")(str \[, characters\]) `#wow` - Returns a string with all bytes in the specified character set removed from the start.

[string.match](https://warcraft.wiki.gg/wiki/API:string.match "API:string.match") \|`strmatch`(string, pattern \[, initpos\]) - Similar to strfind but only returns the matches, not the string positions.

[string.rep](https://warcraft.wiki.gg/wiki/API:string.rep "API:string.rep") \|`strrep`(seed, count) - Return a string which is count copies of seed.

[string.reverse](https://warcraft.wiki.gg/wiki/API:string.reverse "API:string.reverse") \|`strrev`(string) - Reverses a string.

[string.rtgsub](https://warcraft.wiki.gg/wiki/API:string.rtgsub "API:string.rtgsub")(s, pattern, repl \[, n\]) `#framexml` - A version of `string.gsub` which is able to be passed restricted tables.

[string.rtrim](https://warcraft.wiki.gg/wiki/API:string.rtrim "API:string.rtrim")(str \[, characters\]) `#wow` - Returns a string with all bytes in the specified character set removed from the end.

[string.split](https://warcraft.wiki.gg/wiki/API:string.split "API:string.split") \|`strsplit`(delimiter, string \[, pieces\]) `#wow` - Splits a string using a delimiter.

[string.sub](https://warcraft.wiki.gg/wiki/API:string.sub "API:string.sub") \|`strsub`(string, index \[, endIndex\]) - Return a substring of string starting at index

[string.trim](https://warcraft.wiki.gg/wiki/API:string.trim "API:string.trim") \|`strtrim`(string \[, chars\]) `#wow` - Trim leading and trailing spaces or the characters passed to chars from string.

[string.upper](https://warcraft.wiki.gg/wiki/API:string.upper "API:string.upper") \|`strupper`(string) - Return string with all lower case changed to upper case.

[strcmputf8i](https://warcraft.wiki.gg/wiki/API:strcmputf8i?action=edit&redlink=1 "API:strcmputf8i (page does not exist)")(string, string) `#wow` - string comparison accounting for UTF-8 chars

[strlenutf8](https://warcraft.wiki.gg/wiki/API:strlenutf8 "API:strlenutf8")(string) `#wow` - Returns the number of characters in a UTF8-encoded string.

[strsplittable](https://warcraft.wiki.gg/wiki/API:strsplittable "API:strsplittable")(delimiter, subject \[, pieces\]) `#wow` - Splits a string using a delimiter and returns an array.

### Table library

See [TableLibraryTutorial](http://lua-users.org/wiki/TableLibraryTutorial) for more info.

[table.concat](https://warcraft.wiki.gg/wiki/API:table.concat "API:table.concat")(list \[, sep \[, i \[, j\]) - Concatenates the contents of a table to a string.

[table.contains](https://warcraft.wiki.gg/wiki/API:table.contains "API:table.contains") \|`tContains`(table \[, value\]) `#wow`

[table.count](https://warcraft.wiki.gg/wiki/API:table.count "API:table.count") \|`CountTable`(tbl) `#wow` - Returns the number of elements within a table.

[table.create](https://warcraft.wiki.gg/wiki/API:table.create "API:table.create")(arraySizeHint \[, nodeSizeHint\]) `#wow`

[table.freeze](https://warcraft.wiki.gg/wiki/API:table.freeze "API:table.freeze")(table) `#wow` - Marks a supplied table as frozen, preventing any modifications to its contents, or replacement of its metatable.

[table.getcountinfo](https://warcraft.wiki.gg/wiki/API:table.getcountinfo "API:table.getcountinfo")(table) `#wow`

[table.indexof](https://warcraft.wiki.gg/wiki/API:table.indexof "API:table.indexof") \|`tIndexOf`(table \[, value\]) `#wow`

[table.insert](https://warcraft.wiki.gg/wiki/API:table.insert "API:table.insert") \|`tinsert`(list \[, pos\], value) - Insert value into the table at position pos (defaults to end of table).

[table.isempty](https://warcraft.wiki.gg/wiki/API:table.isempty "API:table.isempty") \|`TableIsEmpty`(table) `#wow`

[table.isfrozen](https://warcraft.wiki.gg/wiki/API:table.isfrozen "API:table.isfrozen")(table) `#wow` - Returns true if a table has been marked as frozen.

[table.keys](https://warcraft.wiki.gg/wiki/API:table.keys "API:table.keys") \|`GetKeysArray`(table) `#wow`

[table.maxn](https://warcraft.wiki.gg/wiki/API:table.maxn?action=edit&redlink=1 "API:table.maxn (page does not exist)")(list) - Returns the largest positive numerical index of the given table, or zero if the table has no positive numerical indices.

[table.remove](https://warcraft.wiki.gg/wiki/API:table.remove "API:table.remove") \|`tremove`(list \[, pos\]) - Remove and return the table element at position pos (defaults to last entry in table).

[table.removemulti](https://warcraft.wiki.gg/wiki/API:table.removemulti "API:table.removemulti")(list \[, pos \[, count\]\]) `#wow` - Removes `count` elements from a table starting at index `pos`.

[table.removeunordered](https://warcraft.wiki.gg/wiki/API:table.removeunordered "API:table.removeunordered") \|`tUnorderedRemove`(table \[, index\]) `#wow`

[table.removevalue](https://warcraft.wiki.gg/wiki/API:table.removevalue "API:table.removevalue") \|`tDeleteItem`(table \[, value\]) `#wow`

[table.sort](https://warcraft.wiki.gg/wiki/API:table.sort "API:table.sort") \|`sort`(list \[, comp\]) - Sort the elements in the table in-place, optionally using a custom comparator.

[table.values](https://warcraft.wiki.gg/wiki/API:table.values "API:table.values") \|`GetValuesArray`(table) `#wow`

[table.wipe](https://warcraft.wiki.gg/wiki/API:table.wipe "API:table.wipe") \|`wipe`(list) `#wow` - Restore the table to its initial value (like tab = {} without the garbage).

[table.foreach](https://warcraft.wiki.gg/wiki/API:table.foreach "API:table.foreach") \|`foreach`(table, function) `#deprecated` - Executes a function for each element in table. Deprecated, it is replaced by [pairs](https://warcraft.wiki.gg/wiki/API:pairs "API:pairs").

[table.foreachi](https://warcraft.wiki.gg/wiki/API:table.foreachi "API:table.foreachi") \|`foreachi`(table, function) `#deprecated` - Executes a function for each sequential element in table. Deprecated, it is replaced by [ipairs](https://warcraft.wiki.gg/wiki/API:ipairs "API:ipairs").

[table.getn](https://warcraft.wiki.gg/wiki/API:table.getn "API:table.getn") \|`getn`(table) `#deprecated` - Return the size of the table when seen as a list. Deprecated, it is replaced by the length operator `#`.

[table.setn](https://warcraft.wiki.gg/wiki/API:table.setn "API:table.setn")(table, n) `#obsolete` - throws an error if called.

### Coroutine library

See [CoroutinesTutorial](http://lua-users.org/wiki/CoroutinesTutorial) and [PIL: Coroutines](https://www.lua.org/pil/contents.html#9) for more info.

[coroutine.create](https://warcraft.wiki.gg/wiki/API:coroutine.create "API:coroutine.create")(f)

[coroutine.resume](https://warcraft.wiki.gg/wiki/API:coroutine.resume "API:coroutine.resume")(co \[, val1, ...\])

[coroutine.running](https://warcraft.wiki.gg/wiki/API:coroutine.running?action=edit&redlink=1 "API:coroutine.running (page does not exist)")()

[coroutine.status](https://warcraft.wiki.gg/wiki/API:coroutine.status?action=edit&redlink=1 "API:coroutine.status (page does not exist)")(co)

[coroutine.wrap](https://warcraft.wiki.gg/wiki/API:coroutine.wrap "API:coroutine.wrap")(f)

[coroutine.yield](https://warcraft.wiki.gg/wiki/API:coroutine.yield "API:coroutine.yield")(...)

### Bitwise library

World of Warcraft includes the Lua [bitlib](https://www.lua.org/manual/5.2/manual.html#6.7) library which has been available since [Patch 1.9](https://warcraft.wiki.gg/wiki/Patch_1.9.0/API_changes "Patch 1.9.0/API changes"). It seems to work internally with standard 32-bit 'int' values, since `bit``.``lshift``(``0x80000000``,`` ``1``)`` ``==`` ``0`. See [BitwiseOperators](http://lua-users.org/wiki/BitwiseOperators) for more info.

[bit.bnot](https://warcraft.wiki.gg/wiki/API:bit.bnot?action=edit&redlink=1 "API:bit.bnot (page does not exist)")(a) - binary 'not' - the one's complement of a

[bit.band](https://warcraft.wiki.gg/wiki/API:bit.band?action=edit&redlink=1 "API:bit.band (page does not exist)")(a1, ...) - binary 'and' - the bitwise and of the values

[bit.bor](https://warcraft.wiki.gg/wiki/API:bit.bor?action=edit&redlink=1 "API:bit.bor (page does not exist)")(a1, ...) - binary 'or' - the bitwise or of the values

[bit.bxor](https://warcraft.wiki.gg/wiki/API:bit.bxor?action=edit&redlink=1 "API:bit.bxor (page does not exist)")(a1, ...) - bitwise 'xor' - the bitwise exclusive or of the values

[bit.lshift](https://warcraft.wiki.gg/wiki/API:bit.lshift?action=edit&redlink=1 "API:bit.lshift (page does not exist)")(a, n) - 'left shift' - a shifted left by n bits

[bit.rshift](https://warcraft.wiki.gg/wiki/API:bit.rshift?action=edit&redlink=1 "API:bit.rshift (page does not exist)")(a, n) - 'right shift' - a shifted right by n bits

[bit.arshift](https://warcraft.wiki.gg/wiki/API:bit.arshift?action=edit&redlink=1 "API:bit.arshift (page does not exist)")(a, n) - 'arithmetic right shift' - a shifted right arithmetically by n bits

[bit.mod](https://warcraft.wiki.gg/wiki/API:bit.mod?action=edit&redlink=1 "API:bit.mod (page does not exist)")(a, n) - signed 'modulus' - the signed value of a modulo n (result is the same sign as a)

## See also

- [https://www.lua.org/manual/5.1/](https://www.lua.org/manual/5.1/) Lua 5.1 Reference Manual
- [https://www.lua.org/pil/contents.html](https://www.lua.org/pil/contents.html) Programming in Lua (first edition)
- [https://github.com/Meorawr/elune](https://github.com/Meorawr/elune) A customized Lua 5.1 implementation extending the virtual machine with a tainted execution model based off the World of Warcraft user interface environment.

## References

 

1.  [^](#cite_ref-1) [https://github.com/Gethe/wow-ui-source/blob/live/Interface/AddOns/Blizzard_SharedXMLBase/Compat.lua](https://github.com/Gethe/wow-ui-source/blob/live/Interface/AddOns/Blizzard_SharedXMLBase/Compat.lua)
