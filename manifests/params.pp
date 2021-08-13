# Default parameters for Pubcrawler
class pubcrawler::params {

  $bgcolor          = '#fff'
  $header_icon      = ''
  $viewdays         = '14'
  $relentrezdate    = '90'
  $getmax           = '800'
  $fullmax          = '500'
  $include_config   = 'no'
  $search_URL       = ''
  $neighbour_URL    = ''
  $retrieve_URL     = ''
  $extra_range      = '1000'
  $check            = '0'
  $prompt           = '1'
  $verbose          = '0'
  $mute             = '0'
  $log_file         = ''
  $base_URL         = 'local_file'
  $mail_features    = 'all'
  $lynx             = ''
  $prefix           = ''
  $system           = ''
  $proxy_port       = ''
  $proxy_auth       = ''
  $proxy_pass       = ''
  $time_out         = '180'
  $test_URL         = 'http://www.ncbi.nlm.nih.gov/'
  $no_test          = '0'
  $indent           = '125'
  $no_decap         = ''
  $spacer           = ''
  $searches         = undef

  # override some of the above defaults in hash form to make
  # configurations specific for a site.
  $site_specific_params = {
    'AmoebaDB' => {
      bgcolor     => '#C8C5A2',
      header_icon => '/a/images/AmoebaDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Entamoeba',
          term     => 'Entamoeba [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Acanthamoeba',
          term     => 'Acanthamoeba [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Entamoeba',
          term     => 'Entamoeba [ALL]',
        },

        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Acanthamoeba',
          term     => 'Acanthamoeba [ALL]',
        },
      ],
    },

    'CryptoDB' => {
      bgcolor     => '#ffcccc',
      header_icon => '/a/images/CryptoDB/title_s.png',
      searches => [
        {
          database => 'genbank',
          alias    => 'New Genbank sequences, C. parvum',
          term     => 'Cryptosporidium parvum [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences, C. hominis',
          term     => 'Cryptosporidium hominis [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences, C. muris',
          term     => 'Cryptosporidium muris [ORGN]',
        },
      ],
    },

    'EuPathDB' => {
      bgcolor     => '#507494',
      header_icon => '/a/images/EuPathDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Cryptosporidium',
          term     => 'Cryptosporidium [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Encephalitozoon or Enterocytozoon',
          term     => 'Enterocytozoon [ALL] or Encephalitozoon [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Entamoeba',
          term     => 'Entamoeba [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Giardia',
          term     => 'Giardia [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Microsporidia',
          term     => 'Edhazardia [ALL]  OR Encephalitozoon [ALL]  OR Enterocytozoon [ALL]  OR Hamiltosporidium [ALL]  OR Nematocida [ALL]  OR Nosema [ALL]  OR Vavraia [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Piroplasma genera',
          term     => 'Anthemosoma [ALL] OR Babesia [ALL] OR Cristalloidophora [ALL] OR Dactylosoma [ALL] OR Echinozoon [ALL] OR Haemohormidium [ALL] OR Sauroplasma [ALL] OR Theileria [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Plasmodium',
          term     => 'Plasmodium [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Toxoplasma or Eimeria or Neospora',
          term     => 'Toxoplasma [ALL] or Eimeria [ALL] or Neospora [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Trichomonas',
          term     => 'Trichomonas [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on other Apicomplexan organisms',
          term     => 'Apicomplexa OR Apicomplexan OR Eimeria OR Gregarina OR Neospora OR Sarcocystis OR Theileria NOT Cryptosporidium NOT Plasmodium NOT Toxoplasma [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Leishmania or Trypanosoma or Crithidia',
          term     => 'Trypanosoma [ALL] or  Leishmania [ALL] or Crithidia [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Cryptosporidium',
          term     => 'Cryptosporidium [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Entamoeba',
          term     => 'Entamoeba [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Giardia',
          term     => 'Giardia [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Microsporidia',
          term     => 'Edhazardia [ORGN]  OR Encephalitozoon [ORGN]  OR Enterocytozoon [ORGN]  OR Hamiltosporidium [ORGN]  OR Nematocida [ORGN]  OR Nosema [ORGN]  OR Vavraia [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Piroplasma genera',
          term     => 'Anthemosoma OR Babesia OR Cristalloidophora OR Dactylosoma OR Echinozoon OR Haemohormidium OR Sauroplasma OR Theileria [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Plasmodium',
          term     => 'Plasmodium [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Toxoplasma',
          term     => 'Toxoplasma [ORGN] or Eimeria [ORGN] or Neospora [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Trichomonas',
          term     => 'Trichomonas [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for other Apicomplexan organisms',
          term     => 'Apicomplexa NOT Toxoplasma NOT Plasmodium NOT Cryptosporidium [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Leishmania or Trypanosoma or Crithidia',
          term     => 'Leishmania [ORGN] or Trypanosoma [ORGN] or Crithidia [ORGN]',
        },
      ],
    },

    'FungiDB' => {
      bgcolor     => '#cd919e',
      header_icon => '/a/images/FungiDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Aspergillus or Candida or Coccidioides or Cryptococcus or Fusarium or Gibberella or Magnaporthe or Neurospora or Puccinia or Rhizopus or Saccharomyces',
          term     => 'Aspergillus [ALL] or Candida [ALL] or Coccidioides [ALL] or Cryptococcus [ALL] or Fusarium [ALL] or Gibberella [ALL] or Magnaporthe [ALL] or Neurospora [ALL] or Puccinia [ALL] or Rhizopus [ALL] or Saccharomyces [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Aspergillus or Candida or Coccidioides or Cryptococcus or Fusarium or Gibberella or Magnaporthe or Neurospora or Puccinia or Rhizopus or Saccharomyces',
          term     => 'Aspergillus [ORGN] or Candida [ORGN] or Coccidioides [ORGN] or Cryptococcus [ORGN] or Fusarium [ORGN] or Gibberella [ORGN] or Magnaporthe [ORGN] or Neurospora [ORGN] or Puccinia [ORGN] or Rhizopus [ORGN] or Saccharomyces [ORGN]',
        },
      ],
    },

    'GiardiaDB' => {
      bgcolor     => '#993333',
      header_icon => '/a/images/GiardiaDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Giardia',
          term     => 'Giardia [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Giardia',
          term     => 'Giardia [ORGN]',
        },
      ],
    },

    'HostDB' => {
      bgcolor     => '#e08265',
      header_icon => '/a/images/HostDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on host parasite interaction',
          term     => 'host parasite interaction [ALL]',
        },
      ],
    },

    'MicrosporidiaDB' => {
      bgcolor     => '#C4BAD3',
      header_icon => '/a/images/MicrosporidiaDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Microsporidia',
          term     => 'Edhazardia [ALL]  OR Encephalitozoon [ALL]  OR Enterocytozoon [ALL]  OR Hamiltosporidium [ALL]  OR Nematocida [ALL]  OR Nosema [ALL]  OR Vavraia [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Microsporidia',
          term     => 'Edhazardia [ORGN]  OR Encephalitozoon [ORGN]  OR Enterocytozoon [ORGN]  OR Hamiltosporidium [ORGN]  OR Nematocida [ORGN]  OR Nosema [ORGN]  OR Vavraia [ORGN] or Anncaliia  [ORGN] or Vittaforma [ORGN]',
        },
      ],
    },

    'PiroplasmaDB' => {
      bgcolor     => '#e08265',
      header_icon => '/a/images/PiroplasmaDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Piroplasma genera',
          term     => 'Anthemosoma [ALL] OR Babesia [ALL] OR Cristalloidophora [ALL] OR Dactylosoma [ALL] OR Echinozoon [ALL] OR Haemohormidium [ALL] OR Sauroplasma [ALL] OR Theileria [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Piroplasma genera',
          term     => 'Anthemosoma [ORGN] OR [ORGN] Babesia [ORGN] OR Cristalloidophora [ORGN] OR Dactylosoma [ORGN] OR Echinozoon [ORGN] OR Haemohormidium [ORGN] OR Sauroplasma [ORGN] OR Theileria [ORGN]',
        },
      ],
    },

    'PlasmoDB' => {
      bgcolor     => '#bbaacc',
      header_icon => '/a/images/PlasmoDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Plasmodium',
          term     => 'Plasmodium [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Plasmodium',
          term     => 'Plasmodium [ORGN]',
        },
      ],
    },

    'SchistoDB' => {
      bgcolor     => '#cd919e',
      header_icon => '/a/images/SchistoDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles related to Schistosoma',
          term     => 'Schistosoma [ALL] or schistosoma [ALL] or blood-fluke [ALL] or Schistosomatidae [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Schistosoma',
          term     => 'Schistosoma [ORGN]',
        },
      ],
    },

    'ToxoDB' => {
      bgcolor     => '#cd919e',
      header_icon => '/a/images/ToxoDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Toxoplasma',
          term     => 'Toxoplasma [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Eimeria',
          term     => 'Eimeria [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Eimeria',
          term     => 'Gregarina [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Neospora',
          term     => 'Neospora [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Toxoplasma, Eimeria, or Neospora',
          term     => 'Toxoplasma [ORGN] or Eimeria [ORGN] or Neospora [ORGN] or Gregarina [ORGN]',
        },
      ],
    },

    'TrichDB' => {
      bgcolor     => '#993333',
      header_icon => '/a/images/TrichDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Trichomonas',
          term     => 'Trichomonas [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Trichomonas',
          term     => 'Trichomonas [ORGN]',
        },
      ],
    },

    'TriTrypDB' => {
      bgcolor     => '#dfbba6',
      header_icon => '/a/images/TriTrypDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Trypanosoma',
          term     => 'Trypanosoma [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Leishmania',
          term     => 'Leishmania [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Crithidia',
          term     => 'Crithidia [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Endotrypanum',
          term     => 'Endotrypanum [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Trypanosoma',
          term     => 'Trypanosoma [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Crithidia',
          term     => 'Crithidia [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Endotrypanum',
          term     => 'Endotrypanum [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Leishmania',
          term     => 'Leishmania [ORGN]',
        },
      ],
    },

    'VectorBase' => {
      bgcolor     => '#6ea05f',
      header_icon => '/a/images/VEuPathDB/Logos-color-text-web/vectorbase.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Diptera',
          term     => 'Diptera [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Gastropoda',
          term     => 'Gastropoda [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Hemiptera',
          term     => 'Hemiptera [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Ixodida',
          term     => 'Ixodida [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Phthiraptera',
          term     => 'Phthiraptera [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Sarcoptiformes',
          term     => 'Sarcoptiformes [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Trombidiformes',
          term     => 'Trombidiformes [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Diptera',
          term     => 'Diptera [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Gastropoda',
          term     => 'Gastropoda [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Hemiptera',
          term     => 'Hemiptera [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Ixodida',
          term     => 'Ixodida [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Phthiraptera',
          term     => 'Phthiraptera [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Sarcoptiformes',
          term     => 'Sarcoptiformes [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Trombidiformes',
          term     => 'Trombidiformes [ORGN]',
        }
      ],
    },
    'VEuPathDB' => {
      bgcolor     => '#507494',
      header_icon => '/a/images/VEuPathDB/title_s.png',
      searches => [
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Cryptosporidium',
          term     => 'Cryptosporidium [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Encephalitozoon or Enterocytozoon',
          term     => 'Enterocytozoon [ALL] or Encephalitozoon [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Entamoeba',
          term     => 'Entamoeba [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Giardia',
          term     => 'Giardia [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Microsporidia',
          term     => 'Edhazardia [ALL]  OR Encephalitozoon [ALL]  OR Enterocytozoon [ALL]  OR Hamiltosporidium [ALL]  OR Nematocida [ALL]  OR Nosema [ALL]  OR Vavraia [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Piroplasma genera',
          term     => 'Anthemosoma [ALL] OR Babesia [ALL] OR Cristalloidophora [ALL] OR Dactylosoma [ALL] OR Echinozoon [ALL] OR Haemohormidium [ALL] OR Sauroplasma [ALL] OR Theileria [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Plasmodium',
          term     => 'Plasmodium [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Toxoplasma or Eimeria or Neospora',
          term     => 'Toxoplasma [ALL] or Eimeria [ALL] or Neospora [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Trichomonas',
          term     => 'Trichomonas [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on other Apicomplexan organisms',
          term     => 'Apicomplexa OR Apicomplexan OR Eimeria OR Gregarina OR Neospora OR Sarcocystis OR Theileria NOT Cryptosporidium NOT Plasmodium NOT Toxoplasma [ALL]',
        },
        {
          database => 'pubmed',
          alias    => 'New PubMed articles on Leishmania or Trypanosoma or Crithidia',
          term     => 'Trypanosoma [ALL] or  Leishmania [ALL] or Crithidia [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Cryptosporidium',
          term     => 'Cryptosporidium [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Entamoeba',
          term     => 'Entamoeba [ALL]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Giardia',
          term     => 'Giardia [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Microsporidia',
          term     => 'Edhazardia [ORGN]  OR Encephalitozoon [ORGN]  OR Enterocytozoon [ORGN]  OR Hamiltosporidium [ORGN]  OR Nematocida [ORGN]  OR Nosema [ORGN]  OR Vavraia [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Piroplasma genera',
          term     => 'Anthemosoma OR Babesia OR Cristalloidophora OR Dactylosoma OR Echinozoon OR Haemohormidium OR Sauroplasma OR Theileria [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Plasmodium',
          term     => 'Plasmodium [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Toxoplasma',
          term     => 'Toxoplasma [ORGN] or Eimeria [ORGN] or Neospora [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Trichomonas',
          term     => 'Trichomonas [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for other Apicomplexan organisms',
          term     => 'Apicomplexa NOT Toxoplasma NOT Plasmodium NOT Cryptosporidium [ORGN]',
        },
        {
          database => 'genbank',
          alias    => 'New Genbank sequences for Leishmania or Trypanosoma or Crithidia',
          term     => 'Leishmania [ORGN] or Trypanosoma [ORGN] or Crithidia [ORGN]',
        },
      ],
    },


  }

}
