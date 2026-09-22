# Accessibility Checklist

Worth real points, and quick to get right if you build it in from the start
rather than auditing at the end.

## Contrast

- [ ] Body text against its background: **4.5:1** minimum
- [ ] Large text (24px+, or 19px+ bold): **3:1** minimum
- [ ] Icons and UI borders that carry meaning: **3:1** minimum
- [ ] Contrast ratios written on your design system page, as numbers

Use the Figma plugin "Contrast" or webaim.org/resources/contrastchecker.

## Colour is never the only signal

This project is full of status — succeeded, failed, running. Roughly 1 in 12
men cannot reliably separate your red dot from your green dot.

- [ ] Every status has a **shape or an icon**, not only a colour
- [ ] Every status has a **word**, at least on hover or in the detail view
- [ ] Your design still reads correctly in greyscale — screenshot it and check

## Type and target size

- [ ] Body text 16px or larger. 14px only for genuinely secondary text. Never 12.
- [ ] Line height at least 1.5 for paragraphs
- [ ] Tap targets 44×44px minimum on mobile
- [ ] Text is text, not baked into an image

## States and focus

- [ ] Every interactive element has a visible **focus** state (keyboard users
      navigate by tab, and a focus ring is how they know where they are)
- [ ] Hover is never the only way to discover something — it does not exist on
      a touchscreen
- [ ] Disabled elements explain *why* they are disabled

## Language and errors

- [ ] Error messages say what happened and what to do next
- [ ] No error codes as the primary message
- [ ] Nothing depends on the user understanding a term from n8n's internals

## If you do the Arabic bonus

- [ ] Layout genuinely mirrored, not text swapped into an LTR frame
- [ ] Icons that imply direction are flipped; icons that don't, aren't
- [ ] Numbers and Latin text inside Arabic strings sit correctly
- [ ] Arabic type has more line height than the Latin equivalent — it needs it
