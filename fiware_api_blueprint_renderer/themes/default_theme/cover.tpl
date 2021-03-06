{% from 'fragments/id-generation-macros.tpl' import 
    slug, 
    gen_resource_id, 
    gen_action_id, 
    gen_resource_group_id, 
    gen_resource_group_example_id, 
    gen_resource_example_id,
    gen_apiary_link
%}

{% set top_metadata = ["Introduction", "Concepts", "Terminology"] %}
{% set bottom_metadata = ["Examples", "Acknowledgements", "References"] %}
{% set intro_metadata = ["Copyright", "Abstract", "Status", "Status of this document", "Editors", "Versions"]%}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ name }}</title>
    <link href="css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/monokai.css">
    <script src="js/highlight.pack.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>

    <link rel="stylesheet" type="text/css" href="css/api-specification.css">
    <link rel="stylesheet" type="text/css" href="css/api-specification-pdf.css"> 

    {%- for metadatum in metadata %}
      {%- if metadatum.name.upper() == 'CSS' %}
        <link rel="stylesheet" type="text/css" href="{{ metadatum.value }}"> 
      {%- endif %}
      {%- if metadatum.name.upper() == 'CSS-PDF' %}
        <link rel="stylesheet" type="text/css" href="{{ metadatum.value }}"> 
      {%- endif %}
    {%- endfor %}
    
</head>
<body id="respecDocument" class="h-entry">
   {% include "fragments/intro.tpl"%} 
</body>

</html>
