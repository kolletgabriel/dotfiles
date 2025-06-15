---
id: {{id}}
title: "{{title}}"
date: {{format-date now '%Y-%m-%d %H:%M:%S'}}
tags: []
---

# {{#sh "tr '[a-z]' '[A-Z]'"}} {{title}} {{/sh}}

{{content}}
