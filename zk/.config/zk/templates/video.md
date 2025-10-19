---
id: {{id}}
title: "{{title}}"
date: {{format-date now '%Y-%m-%d %H:%M:%S'}}
tags: [video]
---

# {{#sh "tr '[a-z]' '[A-Z]'"}} {{title}} {{/sh}}

[link]({{extra.link}})

## Notes

{{content}}
