<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page isELIgnored="false"%>
            <!DOCTYPE html>
            <html xmlns:ng="http://angularjs.org" xmlns:ng="http://angularjs.org" ng-app="ddiApp" id="ng-app" class="js flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths ng-scope">

            <head ng-controller="MainContentCtrl">
                <!-- <style type="text/css">@charset "UTF-8";
    [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak, .ng-hide:not(.ng-hide-animate) {
        display: none !important;
    }

    ng\:form {
        display: block;
    }
    </style> -->
                <meta charset="utf-8">
                <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
                <meta content="width=device-width" name="viewport">
                <meta content="OmicsDI is a integrate resource to multiple omics repositories, including Proteomics, Metabolomics and Genomics" name="description">

                <meta content={{meta_dataset_title}} name="dataset_title">
                <meta content={{meta_dataset_abstract}} name="dataset_abstract">
                <meta content={{meta_dataset_identifier}} name="dataset_identifier">
                <meta ng-repeat="entry in meta_entries" name={{entry.name}} content={{entry.content}}>


                <title>OmicsDI: Home</title>
                <link rel="canonical" href={{meta_originalURL}}>
                <link rel="canonical" href={{meta_ddiURL}}>
                <link rel="stylesheet" href="static/css/bootstrap.min.css">
                <link rel="stylesheet" href="static/css/boilerplate-style.css">
                <link rel="stylesheet" href="static/css/ebi-global.css" type="text/css" media="screen">
                <link rel="stylesheet" href="static/css/ebi-visual.css" type="text/css" media="screen">
                <link rel="stylesheet" href="static/css/984-24-col-fluid.css" type="text/css" media="screen">
                <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
                <link rel="stylesheet" href="static/scripts/libs/slick-carousel/slick/slick.css">
                <link rel="stylesheet" href="static/scripts/libs/slick-carousel/slick/slick-theme.css">
                <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
                <link type="text/css" href="static/css/ngProgress.css" rel="stylesheet">
                <link type="text/css" href="static/css/ddi.css" rel="stylesheet">
                <link type="text/css" href="static/css/autocomplete.css" rel="stylesheet">

                <!-- favico -->
                <link rel="apple-touch-icon" sizes="57x57" href="static/images/favico/apple-icon-57x57.png">
                <link rel="apple-touch-icon" sizes="60x60" href="static/images/favico/apple-icon-60x60.png">
                <link rel="apple-touch-icon" sizes="72x72" href="static/images/favico/apple-icon-72x72.png">
                <link rel="apple-touch-icon" sizes="76x76" href="static/images/favico/apple-icon-76x76.png">
                <link rel="apple-touch-icon" sizes="114x114" href="static/images/favico/apple-icon-114x114.png">
                <link rel="apple-touch-icon" sizes="120x120" href="static/images/favico/apple-icon-120x120.png">
                <link rel="apple-touch-icon" sizes="144x144" href="static/images/favico/apple-icon-144x144.png">
                <link rel="apple-touch-icon" sizes="152x152" href="static/images/favico/apple-icon-152x152.png">
                <link rel="apple-touch-icon" sizes="180x180" href="static/images/favico/apple-icon-180x180.png">
                <link rel="icon" type="image/png" sizes="192x192" href="static/images/favico/android-icon-192x192.png">
                <link rel="icon" type="image/png" sizes="32x32" href="static/images/favico/favicon-32x32.png">
                <link rel="icon" type="image/png" sizes="96x96" href="static/images/favico/favicon-96x96.png">
                <link rel="icon" type="image/png" sizes="16x16" href="static/images/favico/favicon-16x16.png">
                <link rel="manifest" href="static/images/favico/manifest.json">
                <meta name="msapplication-TileColor" content="#ffffff">
                <meta name="msapplication-TileImage" content="static/images/favico/ms-icon-144x144.png">
                <meta name="theme-color" content="#ffffff">
                <!--favico end -->

                <base href="/">
                <script>
                    var fanke;
                </script>
                <script type="application/ld+json">
                    {
                        "@context": "http://schema.org",
                        "@type": "Book",
                        "name": "${name}",
                        "publisher": "Linked Data Tools",
                        "inLanguage": "English",
                        "bookFormat": {
                            "@type": "EBook"
                        }
                    }
                </script>

            </head>

            <body class="level2 ng-cloak">

                <div id="" class="container" style="margin:0px;background-color: #0099cc;">

                    <!-- local-search -->
                    <div id="ddi-local-masthead" class="row">
                        <!-- local-title -->
                        <!-- NB: for additional title style patterns, see http://frontier.ebi.ac.uk/web/style/patterns -->
                        <div class="grid_12 alpha logo-title col-md-5 col-sm-12 col-xs-12" id="local-title">
                            <a href="/home" title="Back to OmicsDI homepage"><img src="static/images/logo/OmicsDI-icon-3.png" alt="logo" width="64" height="64"></a>
                            <span><h1><a href="/home" title="Back to OmicsDI homepage">Omics Discovery Index</a></h1></span>
                        </div>
                        <!-- /local-title -->

                        <!-- NB: if you do not have a local-search, delete the following div, and drop the class="grid_12 alpha" class from local-title above -->
                        <!-- /local-search -->
                        <div class="col-md-4 col-sm-10 col-xs-12" ng-hide="show_top_search" style="height:105px; float:right; margin-top:0px; z-index:1; width:45%">
                        </div>

                        <div ng-controller="QueryCtrl" id="queryCtrl" class="col-md-6 col-sm-12 col-xs-12" ng-show="show_top_search" style="height:105px; float:right; margin-top:0px; z-index:1; ">
                            <form novalidate name="queryForm" class="local-search" ng-submit="submit_query()">
                                <fieldset>
                                    <div class="form-group " ng-class="(query.submitted && queryForm.$invalid) ? 'has-error' : ''">
                                        <div class="input-group ">
                                            <autocomplete ng-model="query.text" attr-placeholder="organism, repository, gene, tissue, accession" click-activation="false" data="words" on-type="get_suggestions" on-select="do_query"></autocomplete>
                                            <!--
                                                                <input type="text" style="background-color:#fff; width:99%"
                                                                       placeholder="organism, repository, gene, tissue, accession"
                                                                       class="form-control"
                                                                       id="query-text"
                                                                       name="text"
                                                                       tabindex="1"
                                                                       ng-model="query.text"
                                                                       ng-minlength="2"
                                                                       ng-maxlength="1000"
                                                                       autocomplete="off"
                                                                       required>
                                -->
                                            <div class="input-group-btn">
                                                <button type="submit" class="btn btn-primary ddi-btn">
                                        <i class="fa fa-search"></i> Search
                                    </button>
                                            </div>
                                            <!-- /input-group-btn -->
                                        </div>
                                        <!--input-group -->
                                        <span class="help-block example-searches">
                         <small>
                             <i>
                                 Examples:
                                 <a href="" rel="nofollow" ng-click="example_query('cancer')">cancer</a>,
                                 <a href="" rel="nofollow" ng-click="example_query('TAXONOMY:&quot;9606&quot;')">Homo
                                     sapiens</a>,
                                 <a href="" rel="nofollow" ng-click="example_query('Orbitrap')">Orbitrap</a>,
                                 <a href="" rel="nofollow" ng-click="example_query('Q9HAU5')">Q9HAU5</a>,
                                 <a href="" rel="nofollow" ng-click="example_query('Phospho')">Phospho</a>,
                                 <a href="" rel="nofollow" ng-click="example_query('Hela')">Hela</a>
                             </i>
                         </small>
                     </span>
                                        <!--
                            <label class="control-label ng-cloak has-error"
                                   for="query-text"
                                   ng-show="query.submitted && (queryForm.text.$error.required || queryForm.text.$error.minlength)"
                                   ng-cloak>
                                Your query is too short
                            </label>
                            <label class="control-label ng-cloak"
                                   for="query-text" ng-show="query.submitted && (queryForm.text.$error.maxlength)"
                                   ng-cloak>
                                Your query is too long
                            </label>
                            -->
                                    </div>
                                    <!-- /form-group -->
                                </fieldset>
                            </form>
                        </div>

                    </div>

                    <div id="local-masthead" class="masthead row" style="margin-left:-15px;margin-right:-15px">
                        <!-- local-nav -->
                        <nav style="float:bottom" class="col-md-12 col-sm-12 col-xs-12">
                            <ul class="" id="local-nav">
                                <li class=" first" id="home-menu"><a title="Home" href="/">Home</a></li>
                                <li class="" id="browse-menu"><a title="Browse" href="/search?q=*:*">Browse</a>
                                </li>
                                <li class="" id="api-menu">
                                    <a title="OmicsDI API" href="/api">API</a>
                                </li>
                                <li class=" last" id="about-prider-menu">
                                    <a title="Databases" href="/databases">Databases</a>
                                </li>
                                <!-- If you need to include functional (as opposed to purely navigational) links in your local menu,
                    add them here, and give them a class of "functional". Remember: you'll need a class of "last" for
                    whichever one will show up last...
                    For example: -->
                                <li class="functional last"><a data-icon="\" class="icon icon-static" href="http://www.ebi.ac.uk/support/index.php?query=pride">Feedback</a>
                                </li>
                                <li class="functional"><a class="" href="/about">About</a></li>
                                <li class="functional"><a class="" href="/help">Help</a></li>
                                <li class="functional" id="login-menu" hidden="true"><a title="Login to PRIDE Archive" data-icon="l" class="icon icon-functional" href="http://www.ebi.ac.uk/pride/archive/login">Login</a>
                                </li>
                                <li class="functional first" id="register-menu" hidden="true"><a title="Register" data-icon="5" class="icon icon-functional" href="http://www.ebi.ac.uk/pride/archive/register">Register</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <!-- /local-nav -->
                </div>
                </header>
                <!--<div ng-controller="QueryCtrl" id="queryCtrl" class="" ng-show="show_top_search" ng-hide="true"-->
                <!--style="height:105px; float:right; margin-top:-140px; z-index:1; width:45%">-->
                <!--<form novalidate name="queryForm" class="local-search" ng-submit="submit_query()">-->
                <!--<fieldset>-->
                <!--<div class="form-group" ng-class="(query.submitted && queryForm.$invalid) ? 'has-error' : ''">-->
                <!--<div class="input-group ">-->
                <!--<autocomplete ng-model="query.text"-->
                <!--attr-placeholder="organism, repository, gene, tissue, accession"-->
                <!--click-activation="false" data="words" on-type="get_suggestions"-->
                <!--on-select="do_query"></autocomplete>-->
                <!--&lt;!&ndash;-->
                <!--<input type="text" style="background-color:#fff; width:99%"-->
                <!--placeholder="organism, repository, gene, tissue, accession"-->
                <!--class="form-control"-->
                <!--id="query-text"-->
                <!--name="text"-->
                <!--tabindex="1"-->
                <!--ng-model="query.text"-->
                <!--ng-minlength="2"-->
                <!--ng-maxlength="1000"-->
                <!--autocomplete="off"-->
                <!--required>-->
                <!--&ndash;&gt;-->
                <!--<div class="input-group-btn">-->
                <!--<button type="submit" class="btn btn-primary ddi-btn">-->
                <!--<i class="fa fa-search"></i> Search-->
                <!--</button>-->
                <!--</div>-->
                <!--&lt;!&ndash; /input-group-btn &ndash;&gt;-->
                <!--</div>-->
                <!--&lt;!&ndash;input-group &ndash;&gt;-->
                <!--<span class="help-block example-searches">-->
                <!--<small>-->
                <!--<i>-->
                <!--Examples:-->
                <!--<a href="" rel="nofollow" ng-click="example_query('cancer')">cancer</a>,-->
                <!--<a href="" rel="nofollow" ng-click="example_query('TAXONOMY:&quot;9606&quot;')">Homo-->
                <!--sapiens</a>,-->
                <!--<a href="" rel="nofollow" ng-click="example_query('Orbitrap')">Orbitrap</a>,-->
                <!--<a href="" rel="nofollow" ng-click="example_query('Q9HAU5')">Q9HAU5</a>,-->
                <!--<a href="" rel="nofollow" ng-click="example_query('Phospho')">Phospho</a>,-->
                <!--<a href="" rel="nofollow" ng-click="example_query('Hela')">Hela</a>-->
                <!--</i>-->
                <!--</small>-->
                <!--</span>-->
                <!--&lt;!&ndash;-->
                <!--<label class="control-label ng-cloak has-error"-->
                <!--for="query-text"-->
                <!--ng-show="query.submitted && (queryForm.text.$error.required || queryForm.text.$error.minlength)"-->
                <!--ng-cloak>-->
                <!--Your query is too short-->
                <!--</label>-->
                <!--<label class="control-label ng-cloak"-->
                <!--for="query-text" ng-show="query.submitted && (queryForm.text.$error.maxlength)"-->
                <!--ng-cloak>-->
                <!--Your query is too long-->
                <!--</label>-->
                <!--&ndash;&gt;-->
                <!--</div>-->
                <!--&lt;!&ndash; /form-group &ndash;&gt;-->
                <!--</fieldset>-->
                <!--</form>-->
                <!--</div>-->

                <div id="wrapper" class="container ng-cloak" ng-show="true">
                    <div id="ngProgressOutContainer" ng-show="show_progress_bar"></div>
                    <!--main container of page -->

                    <script>
                        document.title = "OmicsDI Browse";
                    </script>

                    <div id="content" ng-controller="ResultsListCtrl" class="ng-scope ng-cloak" ng-show="display_search_interface" style="margin: 10px">


                        <div id="searching" class="ng-cloak row" style="height: 30px;">
                            <h3 class="col-md-12 col-sm-12 col-xs-12">
                                <small ng-show="search_in_progress" class="ng-hide ng-cloak" style="">
                <i class="fa fa-spinner fa-spin"></i>
            </small>
                                <small ng-class="search_in_progress ? 'animated flash infinite' : 'hidden'" id="metadata-search-status" class="">
                Searching...
            </small>
                                <span ng-show="search_in_progress===false" class="" style="">
                <span id="metasearch-results-count" class="ng-binding ng-scope">{{result.count}}</span>
                                <i class="fa fa-search"></i> Results for search term:
                                <b ng-bind="query_for_show"></b>
                                </span>
                            </h3>
                        </div>
                        <div ng-show="true" class="row" style="">

                            <!-- facets column -->
                            <div class="col-md-3 col-sm-4 hidden-xs metasearch-facets">
                                <div class="metasearch-organism-facet force-scrollbars">
                                    <!-- Omic types -->
                                    <h3 class="ng-binding">Show results for</h3>
                                    <ul class="list-unstyled metasearch-facet-values">
                                        <li>
                                            <a href="" ng-class="{'disabled':omics_facets_no.Proteomics==='0'||is_omic_clicked('Proteomics')==='true'}" ng-click="facet_search(result.facets[index_of_facets.omics_type].id, result.facets[index_of_facets.omics_type].facetValues[omicsfacetsindex.Proteomics].value)"><img src="img/omics/Proteomics2.png" style="vertical-align: top" /><span>  </span><span style="font-size:15px; font-weight:bold">Proteomics</span>
                                                <small>
                            ({{result.facets[index_of_facets.omics_type].facetValues[omicsfacetsindex.Proteomics].count||0
                            | number}})
                        </small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="" ng-class="{'disabled':omics_facets_no.Metabolomics==='0'||is_omic_clicked('Metabolomics')==='true'}" ng-click="facet_search(result.facets[index_of_facets.omics_type].id, result.facets[index_of_facets.omics_type].facetValues[omicsfacetsindex.Metabolomics].value)"><img src="img/omics/Metabolomics2.png" style="vertical-align: top" /><span>  </span><span style="font-size:15px; font-weight:bold">Metabolomics</span>
                                                <small>
                            ({{result.facets[index_of_facets.omics_type].facetValues[omicsfacetsindex.Metabolomics].count||0
                            | number}})
                        </small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="" ng-class="{'disabled':omics_facets_no.Transcriptomics==='0'||is_omic_clicked('Transcriptomics')==='true'}" ng-click="facet_search(result.facets[index_of_facets.omics_type].id, result.facets[index_of_facets.omics_type].facetValues[omicsfacetsindex.Transcriptomics].value)"><img src="img/omics/Transcriptomics2.png" style="vertical-align: top" /><span>  </span><span style="font-size:15px; font-weight:bold">Transcriptomics</span>
                                                <small>
                            ({{result.facets[index_of_facets.omics_type].facetValues[omicsfacetsindex.Transcriptomics].count||0
                            | number}})
                        </small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="" ng-class="{'disabled':omics_facets_no.Genomics==='0'||is_omic_clicked('Genomics')==='true'}" ng-click="facet_search(result.facets[index_of_facets.omics_type].id, result.facets[index_of_facets.omics_type].facetValues[omicsfacetsindex.Genomics].value)"><img src="img/omics/Genomics2.png" style="vertical-align: top" /><span>  </span><span style="font-size:15px; font-weight:bold">Genomics</span>
                                                <small>
                            ({{result.facets[index_of_facets.omics_type].facetValues[omicsfacetsindex.Genomics].count||0
                            | number}})
                        </small>
                                                </label>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="" ng-class="{'disabled':omics_facets_no['Multi-Omics']==='0'||is_omic_clicked('Multi-Omics')==='true'}" ng-click="facet_search(result.facets[index_of_facets.omics_type].id, result.facets[index_of_facets.omics_type].facetValues[omicsfacetsindex['Multi-Omics']].value)"><img src="img/omics/Multipleomics2.png" style="vertical-align: top" /><span>  </span><span style="font-size:15px; font-weight:bold">Multi-Omics</span>
                                                <small>
                            ({{result.facets[index_of_facets.omics_type].facetValues[omicsfacetsindex["Multi-Omics"]].count||0
                            | number}})
                        </small>
                                            </a>
                                        </li>

                                    </ul>
                                </div>
                                <div>
                                    <!-- Repository -->
                                    <h3 class="ng-binding">Repository</h3>

                                    <div class="metasearch-organism-facet force-scrollbars list-group-item">
                                        <input type="text" class="form-control input-block" ng-model="repos_input" ng-disabled="result.facets[index_of_facets.repository].facetValues == null" placeholder="Find your repositories">
                                        <ul class="list-unstyled metasearch-facet-values" ng-class="{'metasearch-organism-facet force-scrollbars': facet.label=='Organisms'}">
                                            <li ng-repeat="facet_value in result.facets[index_of_facets.repository].facetValues | filter:repos_input">
                                                <input type="checkbox" id="result.facets[index_of_facets.repository].label" ng-checked="is_facet_applied(result.facets[index_of_facets.repository].id, facet_value.value)" ng-click="facet_search(result.facets[index_of_facets.repository].id, facet_value.value)">
                                                <label for="result.facets[index_of_facets.repository].label"><span></span></label>
                                                <a href="" ng-click="facet_search(result.facets[index_of_facets.repository].id, facet_value.value)" class="metasearch-facet-link">{{repositories[facet_value.label]}}
                                <small>({{facet_value.count | number}})</small>
                            </a>
                                            </li>
                                            <!-- <small ng-if="facet.label == 'Organisms' && facet.facetValues.length > 10" class="text-muted">Showing top {{facet.facetValues.length}} organisms</small> -->
                                        </ul>
                                    </div>
                                </div>
                                <h2 style="margin-left: -10px; margin-top:20px">Refine by:</h2>

                                <div>
                                    <!-- organisms -->
                                    <h3 class="ng-binding">Organism</h3>

                                    <div class="metasearch-organism-facet force-scrollbars list-group-item">
                                        <input type="text" class="form-control" ng-model="species_input" ng-disabled="result.facets[index_of_facets.TAXONOMY].facetValues == null" placeholder="Find your species">
                                        <ul class="list-unstyled metasearch-facet-values" ng-class="{'metasearch-organism-facet force-scrollbars': facet.label=='Organisms' }">
                                            <li ng-repeat="facet_value in result.facets[index_of_facets.TAXONOMY].facetValues | filter:species_input">
                                                <input type="checkbox" id="result.facets[index_of_facets.TAXONOMY].label" ng-checked="is_facet_applied(result.facets[index_of_facets.TAXONOMY].id, facet_value.value)" ng-click="facet_search(result.facets[index_of_facets.TAXONOMY].id, facet_value.value)">
                                                <label for="result.facets[index_of_facets.TAXONOMY].label"><span></span></label>
                                                <a href="" ng-click="facet_search(result.facets[index_of_facets.TAXONOMY].id, facet_value.value)" class="metasearch-facet-link">{{facet_value.label}}
                                <small>({{facet_value.count | number}})</small>
                            </a>
                                            </li>
                                            <!-- <small ng-if="facet.label == 'Organisms' && facet.facetValues.length > 10" class="text-muted">Showing top {{facet.facetValues.length}} organisms</small> -->
                                        </ul>
                                    </div>
                                </div>
                                <div>
                                    <!-- Tissue -->
                                    <h3 class="ng-binding">Tissue</h3>

                                    <div class="metasearch-organism-facet force-scrollbars list-group-item">
                                        <input type="text" class="form-control" ng-model="tissue_input" ng-disabled="result.facets[index_of_facets.tissue].facetValues == null" placeholder="Find your Tissues">
                                        <ul class="list-unstyled metasearch-facet-values" ng-class="{'metasearch-organism-facet force-scrollbars': facet.label=='Organisms' }">
                                            <li ng-repeat="facet_value in result.facets[index_of_facets.tissue].facetValues | filter:tissue_input">
                                                <input type="checkbox" id="result.facets[index_of_facets.tissue].label" ng-checked="is_facet_applied(result.facets[index_of_facets.tissue].id, facet_value.value)" ng-click="facet_search(result.facets[index_of_facets.tissue].id, facet_value.value)">
                                                <label for="result.facets[index_of_facets.tissue].label"><span></span></label>
                                                <a href="" ng-click="facet_search(result.facets[index_of_facets.tissue].id, facet_value.value)" class="metasearch-facet-link">{{facet_value.label}}
                                <small>({{facet_value.count | number}})</small>
                            </a>
                                            </li>
                                            <!-- <small ng-if="facet.label == 'Organisms' && facet.facetValues.length > 10" class="text-muted">Showing top {{facet.facetValues.length}} organisms</small> -->
                                        </ul>
                                    </div>
                                </div>

                                <div>
                                    <!-- Disease-->
                                    <h3 class="ng-binding">Disease</h3>

                                    <div class="metasearch-organism-facet force-scrollbars list-group-item">
                                        <input type="text" class="form-control" ng-model="disease_input" ng-disabled="result.facets[index_of_facets.disease].facetValues == null" placeholder="Find your Disease">
                                        <ul class="list-unstyled metasearch-facet-values" ng-class="{'metasearch-organism-facet force-scrollbars': facet.label=='Organisms' }">
                                            <li ng-repeat="facet_value in result.facets[index_of_facets.disease].facetValues | filter:disease_input">
                                                <input type="checkbox" id="result.facets[index_of_facets.disease].label" ng-checked="is_facet_applied(result.facets[index_of_facets.disease].id, facet_value.value)" ng-click="facet_search(result.facets[index_of_facets.disease].id, facet_value.value)">
                                                <label for="result.facets[index_of_facets.disease].label"><span></span></label>
                                                <a href="" ng-click="facet_search(result.facets[index_of_facets.disease].id, facet_value.value)" class="metasearch-facet-link">{{facet_value.label}}
                                <small>({{facet_value.count | number}})</small>
                            </a>
                                            </li>
                                            <!-- <small ng-if="facet.label == 'Organisms' && facet.facetValues.length > 10" class="text-muted">Showing top {{facet.facetValues.length}} organisms</small> -->
                                        </ul>
                                    </div>
                                </div>

                                <div>
                                    <!-- Modification -->
                                    <h3 class="ng-binding">Modification
                                        <small>in Proteomics</small>
                                    </h3>
                                    <div class="metasearch-organism-facet force-scrollbars list-group-item">
                                        <input type="text" class="form-control" ng-model="modifi_input" ng-disabled="result.facets[index_of_facets.modification].facetValues == null" placeholder="Find your Modifications">
                                        <ul class="list-unstyled metasearch-facet-values" ng-class="{'metasearch-organism-facet force-scrollbars': facet.label=='Organisms' }">
                                            <li ng-repeat="facet_value in result.facets[index_of_facets.modification].facetValues | filter:modifi_input">
                                                <input type="checkbox" id="result.facets[index_of_facets.modification].label" ng-click="facet_search(result.facets[index_of_facets.modification].id, facet_value.value)" ng-checked="is_facet_applied(result.facets[index_of_facets.modification].id, facet_value.value)">
                                                <label for="result.facets[index_of_facets.modification].label"><span></span></label>
                                                <a href="" ng-click="facet_search(result.facets[index_of_facets.modification].id, facet_value.value)" class="metasearch-facet-link">{{facet_value.label}}
                                <small>({{facet_value.count | number}})</small>
                            </a>
                                            </li>
                                            <!-- <small ng-if="facet.label == 'Organisms' && facet.facetValues.length > 10" class="text-muted">Showing top {{facet.facetValues.length}} organisms</small> -->
                                        </ul>
                                    </div>
                                </div>
                                <div>
                                    <!-- Instruments & Platforms -->
                                    <h3 class="ng-binding">Instrument/Platforms</h3>

                                    <div class="metasearch-organism-facet force-scrollbars list-group-item">
                                        <input type="text" class="form-control" ng-model="instr_input" ng-disabled="result.facets[index_of_facets.instrument_platform].facetValues == null" placeholder="Find your Instruments & Platforms">
                                        <ul class="list-unstyled metasearch-facet-values" ng-class="{'metasearch-organism-facet force-scrollbars': facet.label=='Organisms' }">
                                            <li ng-repeat="facet_value in result.facets[index_of_facets.instrument_platform].facetValues | filter:instr_input">
                                                <input type="checkbox" id="result.facets[index_of_facets.instrument_platform].label" ng-checked="is_facet_applied(result.facets[index_of_facets.instrument_platform].id, facet_value.value)" ng-click="facet_search(result.facets[index_of_facets.instrument_platform].id, facet_value.value)">
                                                <label for="result.facets[index_of_facets.instrument_platform].label"><span></span>{{result.facet[1].label}}</label>
                                                <a href="" ng-click="facet_search(result.facets[index_of_facets.instrument_platform].id, facet_value.value)" class="metasearch-facet-link">{{facet_value.label}}
                                <small>({{facet_value.count | number}})</small>
                            </a>
                                            </li>
                                            <!-- <small ng-if="facet.label == 'Organisms' && facet.facetValues.length > 10" class="text-muted">Showing top {{facet.facetValues.length}} organisms</small> -->
                                        </ul>
                                    </div>
                                </div>

                                <div>
                                    <!-- publication_date -->
                                    <h3 class="ng-binding">Publication Date</h3>

                                    <div class="metasearch-organism-facet force-scrollbars list-group-item">
                                        <input type="text" class="form-control" ng-model="publicdate_input" ng-disabled="result.facets[index_of_facets.publication_date].facetValues == null" placeholder="Find by publication year">
                                        <ul class="list-unstyled metasearch-facet-values" ng-class="{'metasearch-organism-facet force-scrollbars': facet.label=='Organisms' }">
                                            <li ng-repeat="facet_value in result.facets[index_of_facets.publication_date].facetValues | filter:publicdate_input">
                                                <input type="checkbox" id="result.facets[index_of_facets.publication_date].label" ng-checked="is_facet_applied(result.facets[index_of_facets.publication_date].id, facet_value.value)" ng-click="facet_search(result.facets[index_of_facets.publication_date].id, facet_value.value)">
                                                <label for="result.facets[index_of_facets.publication_date].label"><span></span></label>
                                                <a href="" ng-click="facet_search(result.facets[index_of_facets.publication_date].id, facet_value.value)" class="metasearch-facet-link">{{facet_value.label}}
                                <small>({{facet_value.count | number}})</small>
                            </a>
                                            </li>
                                            <!-- <small ng-if="facet.label == 'Organisms' && facet.facetValues.length > 10" class="text-muted">Showing top {{facet.facetValues.length}} organisms</small> -->
                                        </ul>
                                    </div>
                                </div>

                                <div>
                                    <!-- technology-->
                                    <h3 class="ng-binding">Technology Type</h3>

                                    <div class="metasearch-organism-facet force-scrollbars list-group-item">
                                        <input type="text" class="form-control" ng-model="techtype_input" ng-disabled="result.facets[index_of_facets.technology_type].facetValues == null" placeholder="Find your technology type">
                                        <ul class="list-unstyled metasearch-facet-values" ng-class="{'metasearch-organism-facet force-scrollbars': facet.label=='Organisms' }">
                                            <li ng-repeat="facet_value in result.facets[index_of_facets.technology_type].facetValues | filter:techtype_input">
                                                <input type="checkbox" id="result.facets[index_of_facets.technology_type].label" ng-checked="is_facet_applied(result.facets[index_of_facets.technology_type].id, facet_value.value)" ng-click="facet_search(result.facets[index_of_facets.technology_type].id, facet_value.value)">
                                                <label for="result.facets[index_of_facets.technology_type].label"><span></span>{{result.facet[1].label}}</label>
                                                <a href="" ng-click="facet_search(result.facets[index_of_facets.technology_type].id, facet_value.value)" class="metasearch-facet-link">{{facet_value.label}}
                                <small>({{facet_value.count | number}})</small>
                            </a>
                                            </li>
                                            <!-- <small ng-if="facet.label == 'Organisms' && facet.facetValues.length > 10" class="text-muted">Showing top {{facet.facetValues.length}} organisms</small> -->
                                        </ul>
                                    </div>
                                </div>


                            </div>
                            <!-- facets column -->


                            <div class="col-md-9 col-sm-8 col-xs-12  metasearch-results">

                                <!-- paging buttons -->

                                <div class="grid_22 ddi-pagination " style="width:100%">

                                    <div class="col_pager row">
                                        <div class="pr-pager col-md-3 ">
                                            Page
                                            <a href="" ng-click="pagination(1,'default','default','default')" style="margin-left:5px" ng-show="current_page>3 && max_page_no>5">{{1+"<<"}}</a>
                                            <!-- <li><a href="" class="btn " ng-repeat="page in pages" ng-click="pagination(page,'default','default','default')" ng-disabled="current_page===page">{{page}}</a></li> -->
                                            <a href="" class="" ng-repeat="page in pages" style="margin-left:5px" ng-click="pagination(page,'default','default','default')" ng-class="{'disabled':current_page===page}">{{page}}</a>
                                            <a href="" ng-click="pagination(max_page_no,'default','default','default')" style="margin-left:5px" ng-show="current_page<=max_page_no-3 && max_page_no>5">{{">>"+max_page_no}}</a>
                                        </div>
                                        <div class="pr-page-size col-md-3 ">

                                            Page size
                                            <a href="" ng-click="pagination(1,'15','default','default')" style="margin-left:5px" ng-class="{'disabled':page_size==15}" ng-show="result.count>15">15</a>
                                            <a href="" ng-click="pagination(1,'20','default','default')" style="margin-left:5px" ng-class="{'disabled':page_size==20}" ng-hide="result.count<20">20</a>
                                            <a href="" ng-click="pagination(1,'50','default','default')" style="margin-left:5px" ng-class="{'disabled':page_size==50}" ng-hide="result.count<50">50</a>
                                            <a href="" ng-click="pagination(1,'100','default','default')" style="margin-left:5px" ng-class="{'disabled':page_size==100}" ng-hide="result.count<100">100</a>

                                        </div>
                                        <div class="pr-stats col-md-3  ">
                                            Showing <span><span ng-show="result.count &gt; 0">{{(current_page-1)*page_size+1}} -</span> {{current_page*page_size
                                            <=result.count? current_page*page_size : result.count}}</span>
                                                of <span> {{result.count}}</span>
                                        </div>
                                    </div>
                                </div>

                                <!-- paging buttons -->
                                <div class="grid_22 ddi-pagination " style="width:100%">
                                    <div class="clearfix   " id="sort-by">
                                        <span>Sort by:
                            <a href="" ng-click="pagination(1,'default','id','default')" style="margin-left:5px"
                               ng-class="{'disabled':sort_field==='id'}">Accession</a>
                            <a href="" ng-click="pagination(1,'default','relevance','default')"  style="margin-left:5px"
                               ng-class="{'disabled':sort_field==='relevance'}">Relevance</a>
                            <a href="" ng-click="pagination(1,'default','publication_date','default')"  style="margin-left:5px"
                               ng-class="{'disabled':sort_field==='publication_date'}">Publication date</a>
                            <a href="" ng-click="pagination(1,'default','default','descending')"  style="margin-left:5px"
                               ng-class="{'disabled':sort_order==='descending'}">
                                <i class="fa fa-arrow-circle-o-down " style="font-size:19px;"></i>
                            </a>
                            <a href="" ng-click="pagination(1,'default','default','ascending')"  style="margin-left:5px"
                               ng-class="{'disabled':sort_order==='ascending'}">
                                <i class="fa fa-arrow-circle-o-up" style="font-size:19px"></i>
                            </a>
                            </span>
                                    </div>
                                </div>

                                <div id="search-results" class="grid_22  " style="width:90%">
                                    <div id="search-results-items" class="list-group">
                                        <ul class="list-unstyled">
                                            <li class="repeated-item" ng-repeat="dataset in result.datasets">
                                                <div class="ddi-card-panel  list-group-item">
                                                    <div class="project-widget-accession">
                                                        <img src="img/omics/Multipleomics2.png" ng-show="dataset.omicsType.indexOf('Multi-Omics') != -1" />
                                                        <img src="img/omics/Proteomics2.png" ng-show="dataset.omicsType.indexOf('Proteomics') == 0 && dataset.omicsType.indexOf('Multi-Omics') == -1" />
                                                        <img src="img/omics/Metabolomics2.png" ng-show="dataset.omicsType.indexOf('Metabolomics') == 0 && dataset.omicsType.indexOf('Multi-Omics') == -1" />
                                                        <img src="img/omics/Genomics2.png" ng-show="dataset.omicsType.indexOf('Genomics') == 0 && dataset.omicsType.indexOf('Multi-Omics') == -1 " />
                                                        <img src="img/omics/Transcriptomics2.png" ng-show="(dataset.omicsType.indexOf('Transcriptomics') == 0 || dataset.omicsType.indexOf('transcriptomics') == 0) && dataset.omicsType.indexOf('Multi-Omics') == -1" />
                                                        <a href={{ "#/dataset/"+dataset.source+ "/"+dataset.id}}>
                                                            <span ng-bind-html="dataset['title']|browsehighlight:highlight_terms"></span></a>
                                                    </div>
                                                    <blockquote class="ddi-blockquote">
                                                        <div class="project-widget-paragraph align-justify">
                                                            <!--
                                            <b>Project description:</b>
                                        -->
                                                            <span ng-bind-html="dataset['description']|limitTo:450|browsehighlight:highlight_terms"></span> {{dataset["description"].length>450?'...':''}}
                                                            <!-- <a href={{"dataset.html#/"+dataset["id"]}}>(More)</a> -->
                                                            <span ng-show="dataset.description===null">Not available</span>
                                                        </div>

                                                        <div class="project-widget-paragraph">
                                                        </div>
                                                        <div class="project-widget-paragraph" ng-show="dataset['organisms']">
                                                            ORGANISM(S): <span ng-repeat="organism in dataset['organisms']|limitTo:5" ng-bind-html="organism.name+'&nbsp; &nbsp;' |browsehighlight:highlight_terms"> </span>
                                                            <span ng-show="dataset.organisms.length>5">...</span>
                                                            <span ng-show="dataset.organisms.length===0">Not available</span>
                                                        </div>
                                                        <div class="project-widget-paragraph" ng-show="dataset['tissues']">
                                                            TISSUE(S): <span ng-repeat="tissue in dataset['tissues']|limitTo:5" ng-bind-html="tissue.name+'&nbsp; &nbsp;' |browsehighlight:highlight_terms"></span>
                                                            <span ng-show="dataset.tissues.length>5">...</span>
                                                            <span ng-show="dataset.tissues.length===0">Not available</span>
                                                        </div>
                                                        <div class="project-widget-paragraph" ng-show="dataset['diseases']">
                                                            DISEASE(S): <span ng-repeat="disease in dataset['diseases']|limitTo:5" ng-bind-html="disease.name +'&nbsp; &nbsp;'|browsehighlight:highlight_terms"></span>
                                                            <span ng-show="dataset.diseases.length>5">...</span>
                                                            <span ng-show="dataset.diseases.length===0">Not available</span>
                                                        </div>
                                                        <!--
                                    <div class="project-widget-paragraph">
                                        <b>Accession: </b><span
                                            ng-bind-html="dataset.id |browsehighlight:highlight_terms"></span> (<span
                                            style=""
                                            ng-bind-html="repositories[dataset.source]|browsehighlight:highlight_terms"> </span>
                                        )
                                    </div>
                                    -->
                                                    </blockquote>

                                                    <div class="project-widget-paragraph">
                                                        <span ng-show="dataset.publicationDate"><span ng-bind-html="dataset['publicationDate'].substr(0,4)|browsehighlight:highlight_terms"></span>{{"-"+dataset['publicationDate'].substr(4,2)+"-"+dataset['publicationDate'].substr(6,2)}}
                                                        | </span>
                                                        <a href={{ "#dataset/"+dataset.source+ "/"+dataset.id}}><span ng-bind-html="dataset.id |browsehighlight:highlight_terms"></span></a> |
                                                        <a href={{database_urls[repositories[dataset.source_title]]}}> <span ng-bind-html="repositories[dataset.source_title]|browsehighlight:highlight_terms"> </span> </a>
                                                    </div>
                                                    <div class="project-widget-tag" ng-hide="dataset.keywords[0] === 'Not available'">
                                                        <a ng-repeat="keyword in dataset.keywords" title={{keyword}} class="keywords" href={{ "#/search?q="+ "\" "+keyword+"\ ""}}>{{keyword}}</a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- row -->
                                <div class="grid_22 ddi-pagination " style="width:100%">

                                    <div class="col_pager row">
                                        <div class="pr-pager col-md-3 ">
                                            Page
                                            <a href="" ng-click="pagination(1,'default','default','default')" style="margin-left:5px" ng-show="current_page>3 && max_page_no>5">{{1+"<<"}}</a>
                                            <!-- <li><a href="" class="btn " ng-repeat="page in pages" ng-click="pagination(page,'default','default','default')" ng-disabled="current_page===page">{{page}}</a></li> -->
                                            <a href="" class="" ng-repeat="page in pages" style="margin-left:5px" ng-click="pagination(page,'default','default','default')" ng-class="{'disabled':current_page===page}">{{page}}</a>
                                            <a href="" ng-click="pagination(max_page_no,'default','default','default')" style="margin-left:5px" ng-show="current_page<=max_page_no-3 && max_page_no>5">{{">>"+max_page_no}}</a>
                                        </div>
                                        <div class="pr-page-size col-md-3 ">
                                            Page size
                                            <a href="" ng-click="pagination(1,'15','default','default')" style="margin-left:5px" ng-class="{'disabled':page_size==15}" ng-hide="result.count<15">15</a>
                                            <a href="" ng-click="pagination(1,'20','default','default')" style="margin-left:5px" ng-class="{'disabled':page_size==20}" ng-hide="result.count<20">20</a>
                                            <a href="" ng-click="pagination(1,'50','default','default')" style="margin-left:5px" ng-class="{'disabled':page_size==50}" ng-hide="result.count<50">50</a>
                                            <a href="" ng-click="pagination(1,'100','default','default')" style="margin-left:5px" ng-class="{'disabled':page_size==100}" ng-hide="result.count<100">100</a>

                                        </div>
                                        <div class="pr-stats col-md-3 ">
                                            Showing <span><span ng-show="result.count &gt; 0">{{(current_page-1)*page_size+1}} -</span> {{current_page*page_size
                                            <=result.count? current_page*page_size : result.count}}</span>
                                                of <span> {{result.count}}</span>
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <!-- ResultsListCtrl-->
                        </div>
                        <!-- result show -->
                    </div>
                    <!-- ResultsListCtrl -->

                </div>
                <!--wrapper-->



                <!--main container -->

                <!-- </div> ResultsListCtrl -->
                <footer>
                    <div class="row" id="global-footer">

                        <nav class="col-md-12" id="global-nav-expanded">

                            <div class="col-md-2 col-sm-12 col-xs-12">
                                <a title="European Bioinformatics Institute homepage" target="_blank" class="no-icon" href="http://www.ebi.ac.uk/">
                                    <img class="img_at_footer ebi-img" alt="EMBL-EBI logo" src="static/images/logo/embl-ebi.jpg" style="width:150px; margin-top:9px">
                                </a>

                                <a title="BD2K" target="_blank" class="no-icon" href="http://www.heartbd2k.org/">
                                    <img class="img_at_footer img" alt="" src="static/images/logo/bd2k.png" style="width:150px; margin-top:9px">
                                </a>
                                <a href="http://metabolomexchange.org/" target="_blank">
                                    <img src="static/images/home/metabolome.png" class="img_at_footer" style="width:150px; margin-top:9px" /></a>
                                <a class="img_at_footer" href="http://www.proteomexchange.org/" target="_blank">
                                    <img src="static/images/home/proteome.png" style="width:150px; margin-top:9px"></a>
                                <a class="img_at_footer" href="https://www.ebi.ac.uk/ega/" target="_blank">
                                    <img src="static/images/db-logos/ega_phenome_logo.jpg" style="width:80px; margin-top:9px">
                                </a>
                            </div>

                            <div class="col-md-8 col-sm-8 col-xs-12">
                                <h3 class="about">
                                    OmicsDI Databases
                                </h3>


                                <div class="col-md-3 col-sm-4 col-xs-4">
                                    <ul>

                                        <li><a target="_blank" href="http://www.ebi.ac.uk/pride/archive/" class="no-icon">PRIDE</a>
                                        </li>

                                        <li><a target="_blank" href="http://www.peptideatlas.org/" class="no-icon">PeptideAtlas</a>
                                        </li>

                                        <li><a target="_blank" href="https://massive.ucsd.edu/ProteoSAFe/datasets.jsp" class="no-icon">MassIVE</a>
                                            <li><a target="_blank" href="http://gpmdb.thegpm.org/" class="no-icon">GPMDB</a>
                                            </li>

                                    </ul>
                                </div>

                                <div class="col-md-3 col-sm-4 col-xs-4">
                                    <ul>

                                        <li><a target="_blank" href="https://www.ebi.ac.uk/ega/" class="no-icon">EGA</a></li>


                                    </ul>
                                </div>

                                <div class="col-md-3 col-sm-4 col-xs-4">
                                    <ul>


                                        <li><a target="_blank" href="http://www.ebi.ac.uk/metabolights/" class="no-icon">MetaboLights</a>
                                        </li>

                                        <li><a target="_blank" href="http://www.metabolomicsworkbench.org/" class="no-icon">Metabolomics
                                Workbench</a></li>
                                        <li><a target="_blank" href="https://www.metabolome-express.org/" class="no-icon">MetabolomeExpress</a>
                                            <li><a target="_blank" href="https://GNPS.ucsd.edu" class="no-icon">GNPS</a>
                                            </li>

                                    </ul>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-4">
                                    <ul>
                                        <li><a target="_blank" href="https://www.ebi.ac.uk/arrayexpress/" class="no-icon">ArrayExpress</a>
                                        </li>
                                        <li><a target="_blank" href="http://www.ebi.ac.uk/gxa/home" class="no-icon">ExpressionAtlas</a></li>

                                    </ul>
                                </div>


                            </div>

                            <div class="col-md-2 col-sm-4 col-xs-12">
                                <h3 class="about">Information</h3>
                                <ul>
                                    <li><a href="/about">About OmicsDI</a></li>
                                    <li><a href="/databases">Databases</a></li>
                                    <li><a href="/help#/Overview">Help</a></li>
                                    <li><a href="/api#/overview">API</a></li>
                                    <li><a href="http://www.ebi.ac.uk/support/index.php?query=pride">Contact us</a></li>
                                    <li><a target="_blank" href="https://github.com/BD2K-DDI/" class="no-icon">Code on GitHub</a>
                                    </li>
                                    <li><a target="_blank" href="http://www.ebi.ac.uk/about/terms-of-use" class="no-icon">Terms of
                            use</a>
                                    </li>
                                </ul>
                            </div>

                        </nav>

                    </div>
                </footer>
                </div>

                <!--wraper of page -->
                <!-- To have google analytics-->
                <script>
                    (function(i, s, o, g, r, a, m) {
                        i['GoogleAnalyticsObject'] = r;
                        i[r] = i[r] || function() {
                            (i[r].q = i[r].q || []).push(arguments)
                        }, i[r].l = 1 * new
                        Date();
                        a = s.createElement(o),
                            m = s.getElementsByTagName(o)[0];
                        a.async = 1;
                        a.src = g;
                        m.parentNode.insertBefore(a, m)
                    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

                    ga('create', 'UA-70417662-1', 'auto');
                    ga('send', 'pageview');
                </script>


                <script src="static/scripts/libs/jquery/jquery-1.10.1.min.js"></script>
                <script src="static/scripts/libs/angular/angular.min.js"></script>
                <script src="static/scripts/libs/underscore/underscore-min.js"></script>
                <script src="static/scripts/libs/angular-route/angular-route.min.js"></script>
                <script src="static/scripts/libs/angular/angular-cookies.js"></script>
                <script src="static/scripts/libs/angular/angular-animate.min.js"></script>
                <script src="static/scripts/libs/angular/ngprogress.min.js"></script>
                <script src="static/scripts/libs/angular/autocomplete.js"></script>
                <script src="static/scripts/libs/angular-ui/ui-bootstrap-tpls-0.14.2.js"></script>

                <script src="static/scripts/app.js"></script>
                <script src="static/scripts/DDIService.js"></script>
                <script src="static/scripts/DDIMainContentCtl.js"></script>
                <script src="static/scripts/DDIQueryCtl.js"></script>
                <script src="static/scripts/DDIDatasetListsCtl.js"></script>
                <script src="static/scripts/DDIResultsListCtl.js"></script>
                <script src="static/scripts/DDIDatasetCtl.js"></script>
                <script src="static/scripts/DDICheckCtl.js"></script>




                <script src="static/scripts/DDIGetTweets.js"></script>
                <script src="static/scripts/DDIPieCharts.js"></script>
                <script src="static/scripts/DDIWordCloud.js"></script>
                <script src="static/scripts/DDIChordDiagram.js"></script>
                <script src="static/scripts/libs/d3/queue.v1.min.js"></script>
                <script src="static/scripts/libs/d3/d3.min.js"></script>
                <script src="static/scripts/libs/d3/d3.layout.cloud.js"></script>
                <script src="static/scripts/libs/chord2/chord2.js"></script>
                <script src="static/scripts/libs/slick-carousel/slick/slick.js"></script>
                <script src="static/scripts/libs/angular-slick/dist/slick.js"></script>

            </body>

            </html>