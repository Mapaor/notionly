#import "../../src/lib.typ": *
#show: notionly

// ------------ EXAMPLES ---------

// CHECKLISITS

#align(center)[= Checklist Examples]
#line(length: 100%, stroke: 0.2pt)

Hello this is normal text  \
Bla bla bla
- [ ] Buy milk
- [ ] Send the email
- [ ] Finish this package
- [X] Finish checklist support
- [X] Finish callout support
- Normal bullet (unchanged)
#v(4em)

// CODE

#align(center)[= Code Examples]
#line(length: 100%, stroke: 0.2pt)

This is inline code `let a = 5` and  we can  also have blocks of code:
```js
function hello() {
  console.log("hi");
}
```
```py
import numpy as np
for n in range(3):
    v = np.ones((2, 2)) * n
    print(v)
```
#v(4em)

// CALLOUTS

#align(center)[= Callout Examples]
#line(length: 100%, stroke: 0.2pt)


#callout()[
  This is the default callout (no emoji) using Notion Gray background which is great.
]

#callout(icon: "💡")[
  This callout has an emoji. The content is aligned to the right, like in Notion.

  - It can contain lists.
  - Multiple paragraphs work too.
]

#callout(icon: "📘", bg: notion.blue_bg)[
  This is a callout with blue background and a book icon. Both are optional.
  === A callout can contain more than one block like a heading
  And of course the text can be _rich_ text.
]

#callout(icon: "🛠️", bg: notion.yellow_bg)[
  One more example callout.
]

#callout(icon: "🧪", bg: notion.green_bg)[
  Green background (Notion palette).
]

#callout(icon: "⭕", bg: notion.red_bg)[
  Red background (Notion palette).
  #columns(2, gutter: 8pt)[
  This text is in the
  first column.

  #colbreak()

  This text is in the
  second column.
]
]
#v(4em)


// QUOTES

#align(center)[= Quote Examples]
#line(length: 100%, stroke: 0.2pt)

#quote[This is a quote]

#quote[
  This is a quote that contains other blocks

  === Title 3
  Greaaat
  - It works
  - Yes indeed
]

#quote(big: true)[This is a big quote]
#v(4em)

// EQUATIONS (AUTO-SIZE)

#align(center)[=  Auto-sizing for Equations]
#line(length: 100%, stroke: 0.2pt)

#columns(2)[
  This text is separated into 2 columns to make clear that sometimes equations won't fit our document.  In Notion they  auto-size or horizontally scroll but here we will always need auto-sizing.
  \
  Consider as an example the  following large equation which would normally not fit:
  
  $
  psi_(n ell m_ell m_s) (arrow(r)) = N_(n l)  thin r^l thin e^(-Z r \/ (n a_0)) thin L_(n - l - 1)^(2 l + 1) ((2 Z r)/(n a_0)) (r) Y_(ell m_ell) (hat(upright(r))) chi_(m_s) (sigma.alt) 
  $ 
  Here is auto-sizes to fit. This is enabled by default but can be disabled if desired.
]
#v(4em)

// LINKS
#align(center)[=  Link Examples]
#line(length: 100%, stroke: 0.2pt)
All #link("https://example.com")[Links] get decorated by default with blue text and underline.



Page mentions also get decorated but also have italics like #link("https://notion.so/30611a97-61ab-80fa-9156-c1501e88d148")[_This is a child page_].

We can also have bookmarks which are blocks. 
The following is a bookmark:
#bookmark(
  title: "This is a bookmark",
  previewImage: "../tests/showcase/og-cover.jpg",
  description: "This is a long description which corresponds to the open graph meta tag `description`.",
  url: "https://examplewebsite.com/"
)
All parameters in a bookmark (except the URL) are optional
#bookmark(
  title: "This is a bookmark without image preview",
  description: "This is a long description which corresponds to the open graph meta tag `description`.",
  url: "https://examplewebsite.com/"
)
Only the URL is mandatory
#bookmark(url: "https://examplewebsite.com/")
We can also have child pages like:
#child-page("https://notion.so/30611a97-61ab-80fa-9156-c1501e88d148")[This is a child page]
We can also have embed elements, which are also blocks:
#embed("https://example.com")
And link previews, that we simply leave as a link just like embeds:
#link-preview("https://example.com")
// TO-DO: Add link previews

#v(16em)


// TABLES
#align(center)[= Table Examples]
#line(length: 100%, stroke: 0.2pt)

This is an example table with only row header:
#table(
  columns: (1fr, 1fr, 1fr),
  align: (left, left, left),
  fill: (x, y) => {
    if y == 0 {rgb("#f7f6f3")}
  },
  [Morning], [Afternoon], [Evening],
  [Have breakfast], [Go for a walk], [Have dinner],
  [Spend time with family], [Bake a brownie], [Read in bed]
)

This is an example table with both row header and column header:
#table(
  columns: (1fr, 1fr, 1fr),
  align: (left, left, left),
  fill: (x, y) => {
    if x == 0 or y == 0 {rgb("#f7f6f3")}
  },
  [], [Saturday], [Sunday],
  [Morning], [Clean the room], [Programming],
  [Afternoon], [Go to that birthday pary], [Study _General Relativity_]
)


#v(4em)

// TOGGLES
#align(center)[= Toggles]
#line(length: 100%, stroke: 0.2pt)

// Simple toggle
#toggle(open: false)[This is a toggle][
  This is a children block
]

// Toggle headings (closed)
#toggle(
  heading: 3,
  open: false,
)[This is a toggle heading 3][
  It can have children content
]
#toggle(
  heading: 2,
  open: false
)[This is a toggle heading 2][
  It can have children content
]
#toggle(
  heading: 1,
  open: false
)[This is a toggle heading 1][
  It can have children content
]

#v(1em)

// Toggles (open)
#toggle(
  heading: 0,
  open: true,
)[This is a toggle][
  It can have children content
]
#toggle(
  heading: 3,
  open: true,
)[This is a toggle heading 3][
  It can have children content
]
#toggle(
  heading: 2,
  open: true,
)[This is a toggle heading 2][
  It can have children content
]
#toggle(
  heading: 1,
  open: true
)[This is a toggle heading 1][
  It can have children content
]

#v(1em)

// Identation
#toggle(
  heading: 2,
  indentation: false,
  // open: true,
)[Custom section][
  Nested content without indentation \
  #lorem(7)
]
#v(1em)
#toggle(
  heading: 2,
  indentation: true,
  // open: true,
)[Custom section][
  Nested content with indentation (default) \
  #lorem(7)
]

#v(1em)
// MEDIA FILES
#align(center)[= Media Files Examples]
#line(length: 100%, stroke: 0.2pt)

A continuació un  vídeo:
#video("https://notion.so/30511a9761ab802c808cdbb05b786986", ext: "mp4")[This is an example video]

I un fitxer arbitrari:
#file("https://notion.so/30511a9761ab802c808cdbb05b786986", ext: "py")[Hello_world]

I podem personalitzar la icona si volem:
#file("https://notion.so/30511a9761ab802c808cdbb05b786986", ext:"zip", icon: "📄")[Secret_Folder]

I ara un PDF:
#pdf("https://notion.so/30511a9761ab802c808cdbb05b786986")[This is an example document]