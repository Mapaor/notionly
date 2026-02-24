#import "/src/lib.typ": *
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


// CALLOUTS

#align(center)[= Callout Examples]
#line(length: 100%, stroke: 0.2pt)


#callout()[
  This is the default callout (no emoji) using Notion Gray background which is great.
  === Adeuuu
  Tot genial oi que síiii?
]

#callout(icon: "💡")[
  This callout has an emoji. The content is indented to the right, like in Notion.

  - It can contain lists.
  - Multiple paragraphs work too.
]

#callout(icon: "📘", bg: notion.blue_bg)[
  This is a callout with blue background and a book icon. Both are optional.
  === A callout can contain more than one block like a heading
  And of course the text can be *rich* text.
]

#callout(icon: "🛠️", bg: notion.yellow_bg)[
  Hola bon dia
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

// LINKS
#align(center)[=  Link Examples]
#line(length: 100%, stroke: 0.2pt)
All #link("https://example.com")[Links] get decorated by default with blue text and underline.

This means child pages also get decorated:

#link("https://notion.so/30611a97-61ab-80fa-9156-c1501e88d148")[📄 This is a child page]

Page mentions also get decorated but also have italics like #link("https://notion.so/30611a97-61ab-80fa-9156-c1501e88d148")[_This is a child page_].

Besides inline links we can also have bookmarks which are blocks. 

The following is a bookmark:
#bookmark(
  title: "This is a bookmark",
  previewImage: "2257.jpg",
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
