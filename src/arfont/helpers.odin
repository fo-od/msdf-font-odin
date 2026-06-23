package arfont

import "core:fmt"

getGlyph :: proc(font: Font, char: rune) -> Glyph {
	for g in font.glyphs {
		if g.unicode == char do return g
	}
	fmt.eprintfln("Can't find glyph for unicode '%v'", char)
	return {unicode = -1}
}

