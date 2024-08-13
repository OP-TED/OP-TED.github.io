<?xml version="1.0" encoding="ISO-8859-1"?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ccs="urn:x-Crane:ss:Crane-Constraints2Schematron" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ext="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2" xmlns:espd-req="urn:oasis:names:specification:ubl:schema:xsd:QualificationApplicationRequest-2" xmlns:espd-resp="urn:oasis:names:specification:ubl:schema:xsd:QualificationApplicationResponse-2" xmlns:fn="http://www.w3.org/2005/xpath-functions" version="2.0" exclude-result-prefixes="ccs"><xsl:output indent="yes"/><xsl:template match="/"><xsl:for-each select="document('')"><schema xmlns="http://purl.oclc.org/dsdl/schematron"><pattern id="code-list-values">
<!--This CVA to Schematron implementation supports genericode code lists.-->
<!--
    Start of synthesis of a stylesheet creating rules from code list context
    associations.  This is an XSLT 1.0 stylesheet that can be executed without
    any input file (any supplied input file is ignored; most processors
    require the specification of an input file; when necessary, any XML
    document will do, such as providing the stylesheet itself as the input).

    The end result of running this synthesized stylesheet with no or any input 
    is a Schematron schema expressing the constraints found in the CVA file
    that was input to the creation this stylesheet.  Any changes to those
    inputs will require this stylesheet to be recreated.
  -->
<xsl:text xmlns=""/><xsl:comment xmlns="">
		ESPD code list values constraints - ESPD-codelist-values.cva
		Version 2.1.1
	
$Id: ESPD-codelist-values.cva,v 2.1.1 $

    Required namespace declarations as indicated in this set of rules:

&lt;ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/&gt;
&lt;ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/&gt;
&lt;ns prefix="ext" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2"/&gt;
&lt;ns prefix="espd-req" uri="urn:oasis:names:specification:ubl:schema:xsd:QualificationApplicationRequest-2"/&gt;
&lt;ns prefix="espd-resp" uri="urn:oasis:names:specification:ubl:schema:xsd:QualificationApplicationResponse-2"/&gt;
&lt;ns prefix="fn" uri="http://www.w3.org/2005/xpath-functions"/&gt;

</xsl:comment>

<rule context="cbc:ConfidentialityLevelCode">
  <!--{}[](ConfidentialityLevel)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](ConfidentialityLevel)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;CONFIDENTIAL&#127;PUBLIC&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cbc:ConfidentialityLevelCode'.</assert>
</rule>

<rule context="cac:Country/cbc:IdentificationCode">
  <!--{}[](CountryCodeIDs)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](CountryCodeIDs)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;AD&#127;AE&#127;AF&#127;AG&#127;AI&#127;AL&#127;AM&#127;AO&#127;AQ&#127;AR&#127;AS&#127;AT&#127;AU&#127;AW&#127;AX&#127;AZ&#127;BA&#127;BB&#127;BD&#127;BE&#127;BF&#127;BG&#127;BH&#127;BI&#127;BJ&#127;BL&#127;BM&#127;BN&#127;BO&#127;BQ&#127;BR&#127;BS&#127;BT&#127;BV&#127;BW&#127;BY&#127;BZ&#127;CA&#127;CC&#127;CD&#127;CF&#127;CG&#127;CH&#127;CI&#127;CK&#127;CL&#127;CM&#127;CN&#127;CO&#127;CR&#127;CU&#127;CV&#127;CW&#127;CX&#127;CY&#127;CZ&#127;DE&#127;DJ&#127;DK&#127;DM&#127;DO&#127;DZ&#127;EC&#127;EE&#127;EG&#127;EH&#127;ER&#127;ES&#127;ET&#127;FI&#127;FJ&#127;FK&#127;FM&#127;FO&#127;FR&#127;GA&#127;GB&#127;GD&#127;GE&#127;GF&#127;GG&#127;GH&#127;GI&#127;GL&#127;GM&#127;GN&#127;GP&#127;GQ&#127;GR&#127;GS&#127;GT&#127;GU&#127;GW&#127;GY&#127;HK&#127;HM&#127;HN&#127;HR&#127;HT&#127;HU&#127;ID&#127;IE&#127;IL&#127;IM&#127;IN&#127;IO&#127;IQ&#127;IR&#127;IS&#127;IT&#127;JE&#127;JM&#127;JO&#127;JP&#127;KE&#127;KG&#127;KH&#127;KI&#127;KM&#127;KN&#127;KP&#127;KR&#127;KW&#127;KY&#127;KZ&#127;LA&#127;LB&#127;LC&#127;LI&#127;LK&#127;LR&#127;LS&#127;LT&#127;LU&#127;LV&#127;LY&#127;MA&#127;MC&#127;MD&#127;ME&#127;MF&#127;MG&#127;MH&#127;MK&#127;ML&#127;MM&#127;MN&#127;MO&#127;MP&#127;MQ&#127;MR&#127;MS&#127;MT&#127;MU&#127;MV&#127;MW&#127;MX&#127;MY&#127;MZ&#127;NA&#127;NC&#127;NE&#127;NF&#127;NG&#127;NI&#127;NL&#127;NO&#127;NP&#127;NR&#127;NU&#127;NZ&#127;OM&#127;PA&#127;PE&#127;PF&#127;PG&#127;PH&#127;PK&#127;PL&#127;PM&#127;PN&#127;PR&#127;PS&#127;PT&#127;PW&#127;PY&#127;QA&#127;RE&#127;RO&#127;RS&#127;RU&#127;RW&#127;SA&#127;SB&#127;SC&#127;SD&#127;SE&#127;SG&#127;SH&#127;SI&#127;SJ&#127;SK&#127;SL&#127;SM&#127;SN&#127;SO&#127;SR&#127;SS&#127;ST&#127;SV&#127;SX&#127;SY&#127;SZ&#127;TC&#127;TD&#127;TF&#127;TG&#127;TH&#127;TJ&#127;TK&#127;TL&#127;TM&#127;TN&#127;TO&#127;TR&#127;TT&#127;TV&#127;TW&#127;TZ&#127;UA&#127;UG&#127;UM&#127;US&#127;UY&#127;UZ&#127;VA&#127;VC&#127;VE&#127;VG&#127;VI&#127;VN&#127;VU&#127;WF&#127;WS&#127;XK&#127;YE&#127;YT&#127;ZA&#127;ZM&#127;ZW&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cac:Country/cbc:IdentificationCode'.</assert>
</rule>

<rule context="cbc:TypeCode">
  <!--{}[](CriterionElementType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](CriterionElementType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;CRITERION&#127;SUBCRITERION&#127;REQUIREMENT_GROUP&#127;REQUIREMENT_SUBGROUP&#127;REQUIREMENT&#127;QUESTION_GROUP&#127;QUESTION_SUBGROUP&#127;QUESTION&#127;CAPTION&#127;ADDITIONAL_DESCRIPTION_LINE&#127;LEGISLATION&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cbc:TypeCode'.</assert>
</rule>

<rule context="@currencyID">
  <!--{}[](CurrencyCodeList)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](CurrencyCodeList)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;AED&#127;AFN&#127;ALL&#127;AMD&#127;ANG&#127;AOA&#127;ARS&#127;AUD&#127;AWG&#127;AZN&#127;BAM&#127;BBD&#127;BDT&#127;BGN&#127;BHD&#127;BIF&#127;BMD&#127;BND&#127;BOB&#127;BRL&#127;BSD&#127;BTN&#127;BWP&#127;BZD&#127;CAD&#127;CDF&#127;CHF&#127;CLP&#127;CNY&#127;COP&#127;CRC&#127;CUC&#127;CUP&#127;CVE&#127;CZK&#127;DJF&#127;DKK&#127;DOP&#127;DZD&#127;EEK&#127;EGP&#127;ERN&#127;ETB&#127;EUR&#127;FJD&#127;FKP&#127;GBP&#127;GEL&#127;GHS&#127;GIP&#127;GMD&#127;GNF&#127;GTQ&#127;GYD&#127;HKD&#127;HNL&#127;HRK&#127;HTG&#127;HUF&#127;IDR&#127;ILS&#127;INR&#127;IQD&#127;IRR&#127;ISK&#127;JMD&#127;JOD&#127;JPY&#127;KES&#127;KGS&#127;KHR&#127;KMF&#127;KPW&#127;KRW&#127;KWD&#127;KYD&#127;KZT&#127;LAK&#127;LBP&#127;LKR&#127;LRD&#127;LSL&#127;LTL&#127;LVL&#127;LYD&#127;MAD&#127;MDL&#127;MGA&#127;MKD&#127;MMK&#127;MNT&#127;MOP&#127;MRO&#127;MUR&#127;MVR&#127;MWK&#127;MXN&#127;MYR&#127;MZN&#127;NAD&#127;NGN&#127;NIO&#127;NOK&#127;NPR&#127;NZD&#127;OMR&#127;PAB&#127;PEN&#127;PGK&#127;PHP&#127;PKR&#127;PLN&#127;PYG&#127;QAR&#127;RON&#127;RSD&#127;RUB&#127;RWF&#127;SAR&#127;SBD&#127;SCR&#127;SDG&#127;SEK&#127;SGD&#127;SHP&#127;SLL&#127;SOS&#127;SRD&#127;STD&#127;SYP&#127;SZL&#127;THB&#127;TJS&#127;TMT&#127;TND&#127;TOP&#127;TRY&#127;TTD&#127;TWD&#127;TZS&#127;UAH&#127;UGX&#127;USD&#127;USN&#127;USS&#127;UYU&#127;UZS&#127;VEF&#127;VND&#127;VUV&#127;WST&#127;XAF&#127;XCD&#127;XOF&#127;XPF&#127;XTS&#127;XXX&#127;YER&#127;ZAR&#127;ZMK&#127;ZWL&#127;SQS&#127;TVD&#127;ADF&#127;ADP&#127;ATS&#127;BEF&#127;CYP&#127;DEM&#127;ESP&#127;FIM&#127;FRF&#127;GRD&#127;IEP&#127;ITL&#127;LUF&#127;MCF&#127;MTL&#127;NLG&#127;PTE&#127;SIT&#127;SKK&#127;SML&#127;VAL&#127;XEU&#127;AFA&#127;ALK&#127;AON&#127;AOR&#127;ARM&#127;ARL&#127;ARP&#127;ARA&#127;AZM&#127;BGJ&#127;BGK&#127;BGL&#127;BOP&#127;BRB&#127;BRC&#127;BRE&#127;BRN&#127;BRR&#127;BRZ&#127;CLE&#127;RSD&#127;CSJ&#127;CSK&#127;DDM&#127;ECS&#127;GQE&#127;GNE&#127;GHC&#127;GWP&#127;ILP&#127;ILR&#127;ISJ&#127;LAJ&#127;MGF&#127;MKN&#127;MLF&#127;MVQ&#127;MXP&#127;MZM&#127;NFD&#127;PEH&#127;PEI&#127;PLZ&#127;ROL&#127;RUR&#127;SDD&#127;SRG&#127;SUR&#127;SVC&#127;TJR&#127;TMM&#127;TPE&#127;TRL&#127;UAK&#127;UGS&#127;UYN&#127;VEB&#127;VNC&#127;YDD&#127;YUS&#127;YUF&#127;YUD&#127;YUN&#127;YUR&#127;YUO&#127;YUG&#127;YUM&#127;ZRN&#127;ZRZ&#127;ZWC&#127;ZWD&#127;ZWN&#127;ZWR&#127;MTP&#127;SSP&#127;ZMW&#127;PEN&#127;BYR&#127;BYN&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the attribute '@currencyID'.</assert>
</rule>

<rule context="cbc:ValueCurrencyCode">
  <!--{}[](CurrencyCodeList)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](CurrencyCodeList)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;AED&#127;AFN&#127;ALL&#127;AMD&#127;ANG&#127;AOA&#127;ARS&#127;AUD&#127;AWG&#127;AZN&#127;BAM&#127;BBD&#127;BDT&#127;BGN&#127;BHD&#127;BIF&#127;BMD&#127;BND&#127;BOB&#127;BRL&#127;BSD&#127;BTN&#127;BWP&#127;BZD&#127;CAD&#127;CDF&#127;CHF&#127;CLP&#127;CNY&#127;COP&#127;CRC&#127;CUC&#127;CUP&#127;CVE&#127;CZK&#127;DJF&#127;DKK&#127;DOP&#127;DZD&#127;EEK&#127;EGP&#127;ERN&#127;ETB&#127;EUR&#127;FJD&#127;FKP&#127;GBP&#127;GEL&#127;GHS&#127;GIP&#127;GMD&#127;GNF&#127;GTQ&#127;GYD&#127;HKD&#127;HNL&#127;HRK&#127;HTG&#127;HUF&#127;IDR&#127;ILS&#127;INR&#127;IQD&#127;IRR&#127;ISK&#127;JMD&#127;JOD&#127;JPY&#127;KES&#127;KGS&#127;KHR&#127;KMF&#127;KPW&#127;KRW&#127;KWD&#127;KYD&#127;KZT&#127;LAK&#127;LBP&#127;LKR&#127;LRD&#127;LSL&#127;LTL&#127;LVL&#127;LYD&#127;MAD&#127;MDL&#127;MGA&#127;MKD&#127;MMK&#127;MNT&#127;MOP&#127;MRO&#127;MUR&#127;MVR&#127;MWK&#127;MXN&#127;MYR&#127;MZN&#127;NAD&#127;NGN&#127;NIO&#127;NOK&#127;NPR&#127;NZD&#127;OMR&#127;PAB&#127;PEN&#127;PGK&#127;PHP&#127;PKR&#127;PLN&#127;PYG&#127;QAR&#127;RON&#127;RSD&#127;RUB&#127;RWF&#127;SAR&#127;SBD&#127;SCR&#127;SDG&#127;SEK&#127;SGD&#127;SHP&#127;SLL&#127;SOS&#127;SRD&#127;STD&#127;SYP&#127;SZL&#127;THB&#127;TJS&#127;TMT&#127;TND&#127;TOP&#127;TRY&#127;TTD&#127;TWD&#127;TZS&#127;UAH&#127;UGX&#127;USD&#127;USN&#127;USS&#127;UYU&#127;UZS&#127;VEF&#127;VND&#127;VUV&#127;WST&#127;XAF&#127;XCD&#127;XOF&#127;XPF&#127;XTS&#127;XXX&#127;YER&#127;ZAR&#127;ZMK&#127;ZWL&#127;SQS&#127;TVD&#127;ADF&#127;ADP&#127;ATS&#127;BEF&#127;CYP&#127;DEM&#127;ESP&#127;FIM&#127;FRF&#127;GRD&#127;IEP&#127;ITL&#127;LUF&#127;MCF&#127;MTL&#127;NLG&#127;PTE&#127;SIT&#127;SKK&#127;SML&#127;VAL&#127;XEU&#127;AFA&#127;ALK&#127;AON&#127;AOR&#127;ARM&#127;ARL&#127;ARP&#127;ARA&#127;AZM&#127;BGJ&#127;BGK&#127;BGL&#127;BOP&#127;BRB&#127;BRC&#127;BRE&#127;BRN&#127;BRR&#127;BRZ&#127;CLE&#127;RSD&#127;CSJ&#127;CSK&#127;DDM&#127;ECS&#127;GQE&#127;GNE&#127;GHC&#127;GWP&#127;ILP&#127;ILR&#127;ISJ&#127;LAJ&#127;MGF&#127;MKN&#127;MLF&#127;MVQ&#127;MXP&#127;MZM&#127;NFD&#127;PEH&#127;PEI&#127;PLZ&#127;ROL&#127;RUR&#127;SDD&#127;SRG&#127;SUR&#127;SVC&#127;TJR&#127;TMM&#127;TPE&#127;TRL&#127;UAK&#127;UGS&#127;UYN&#127;VEB&#127;VNC&#127;YDD&#127;YUS&#127;YUF&#127;YUD&#127;YUN&#127;YUR&#127;YUO&#127;YUG&#127;YUM&#127;ZRN&#127;ZRZ&#127;ZWC&#127;ZWD&#127;ZWN&#127;ZWR&#127;MTP&#127;SSP&#127;ZMW&#127;PEN&#127;BYR&#127;BYN&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cbc:ValueCurrencyCode'.</assert>
</rule>

<rule context="cac:AdditionalReferenceDocument/cbc:DocumentTypeCode">
  <!--{}[](DocRefContentType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](DocRefContentType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;TED_CN&#127;ESPD_REQUEST&#127;TECC016&#127;TECC017&#127;TECC018&#127;TECC019&#127;TECC020&#127;TECC021&#127;TECC022&#127;TECC024&#127;Other&#127;NOJCN&#127;ROJCN&#127;LOJCN&#127;NOJPIN&#127;ROJPIN&#127;LOJPIN&#127;NOJCAN&#127;ROJCAN&#127;LOJCAN&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cac:AdditionalReferenceDocument/cbc:DocumentTypeCode'.</assert>
</rule>

<rule context="cac:PartyIdentification/cbc:ID/@schemeID">
  <!--{}[](EOIDType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](EOIDType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;NATIONAL&#127;VAT&#127;LEI&#127;BRIS&#127;DUNS&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the attribute 'cac:PartyIdentification/cbc:ID/@schemeID'.</assert>
</rule>

<rule context="cac:EconomicOperatorParty/cac:Party/cbc:IndustryClassificationCode">
  <!--{}[](EOIndustryClassificationCode)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](EOIndustryClassificationCode)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;MICRO&#127;SMALL&#127;MEDIUM&#127;SME&#127;LARGE&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cac:EconomicOperatorParty/cac:Party/cbc:IndustryClassificationCode'.</assert>
</rule>

<rule context="cac:EconomicOperatorParty/cac:EconomicOperatorRole/cbc:RoleCode">
  <!--{}[](EORoleType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](EORoleType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;SCLE&#127;GM&#127;OERON&#127;OENRON&#127;SC&#127;LE&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cac:EconomicOperatorParty/cac:EconomicOperatorRole/cbc:RoleCode'.</assert>
</rule>

<rule context="@languageID">
  <!--{}[](LanguageCodeEU)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](LanguageCodeEU)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;PL&#127;PT&#127;EL&#127;EN&#127;ES&#127;ET&#127;FI&#127;RO&#127;GA&#127;FR&#127;SK&#127;SL&#127;SV&#127;HU&#127;IT&#127;LT&#127;LV&#127;MT&#127;BG&#127;NL&#127;DA&#127;CS&#127;DE&#127;HR&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the attribute '@languageID'.</assert>
</rule>

<rule context="cac:TenderingCriterion/cbc:EvaluationMethodTypeCode">
  <!--{}[](EvaluationMethodType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](EvaluationMethodType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;PASSFAIL&#127;WEIGHTED&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cac:TenderingCriterion/cbc:EvaluationMethodTypeCode'.</assert>
</rule>

<rule context="cbc:ProcedureCode">
  <!--{}[](ProcedureType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](ProcedureType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;PRIOR&#127;OPEN&#127;RESTRICTED&#127;RESTRICTED_ACCELERATED&#127;NEGOTIATED&#127;OPEN_RECUR&#127;NEGOTIATED_ACCELERATED&#127;AWARD&#127;INFO&#127;AWARD_DIRECT&#127;COMP_NEGOTIATION&#127;COMP_DIALOGUE&#127;DESIGN_CONTEST&#127;CONCESSION&#127;CONCESSION_WO_PUB&#127;INNOVATION&#127;AMI&#127;NOT_SPECIFIED&#127;QUAL&#127;CONTESTS_RESULT&#127;NEGOTIATED_WO_CALL&#127;AWARD_WO_PUB&#127;OTHER&#127;NOT_APPLICABLE&#127;NOT_SPECIFIED&#127;LOV&#127;VDL&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cbc:ProcedureCode'.</assert>
</rule>

<rule context="cbc:ProfileExecutionID">
  <!--{}[](ProfileExecutionID)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](ProfileExecutionID)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;ESPD-EDMv2.0.0-REGULATED&#127;ESPD-EDMv2.0.0-SELFCONTAINED&#127;ESPD-EDMv2.1.0-REGULATED&#127;ESPD-EDMv2.1.0-SELFCONTAINED&#127;ESPD-EDMv1.0.2&#127;ESPD-EDMv2.1.1-BASIC&#127;ESPD-EDMv2.1.1-EXTENDED&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cbc:ProfileExecutionID'.</assert>
</rule>

<rule context="cbc:ProcurementTypeCode">
  <!--{}[](ProjectType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](ProjectType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;WORKS&#127;SUPPLIES&#127;COMBINED&#127;SERVICES&#127;OTHER&#127;NOT_APPLICABLE&#127;NOT_SPECIFIED&#127;CON_PUBLIC_WORKS&#127;CON_SERVICE&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cbc:ProcurementTypeCode'.</assert>
</rule>

<rule context="cac:TenderingCriterionPropertyGroup/cbc:PropertyGroupTypeCode">
  <!--{}[](PropertyGroupType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](PropertyGroupType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;ON*&#127;ONTRUE&#127;ONFALSE&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cac:TenderingCriterionPropertyGroup/cbc:PropertyGroupTypeCode'.</assert>
</rule>

<rule context="cbc:QualificationApplicationTypeCode">
  <!--{}[](QualificationApplicationType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](QualificationApplicationType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;REGULATED&#127;SELFCONTAINED&#127;BASIC&#127;EXTENDED&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cbc:QualificationApplicationTypeCode'.</assert>
</rule>

<rule context="cac:TenderingCriterionProperty/cbc:ValueDataTypeCode">
  <!--{}[](ResponseDataType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](ResponseDataType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;AMOUNT&#127;CODE&#127;CODE_COUNTRY&#127;DATE&#127;DESCRIPTION&#127;EVIDENCE_IDENTIFIER&#127;INDICATOR&#127;PERCENTAGE&#127;PERIOD&#127;QUANTITY_INTEGER&#127;QUANTITY_YEAR&#127;QUANTITY&#127;NONE&#127;IDENTIFIER&#127;URL&#127;MAXIMUM_AMOUNT&#127;MINIMUM_AMOUNT&#127;MAXIMUM_VALUE_NUMERIC&#127;MINIMUM_VALUE_NUMERIC&#127;TRANSLATION_TYPE_CODE&#127;CERTIFICATION_LEVEL_DESCRIPTION&#127;COPY_QUALITY_TYPE_CODE&#127;TIME&#127;LOT_IDENTIFIER&#127;WEIGHT_INDICATOR&#127;CODE_BOOLEAN&#127;ECONOMIC_OPERATOR_IDENTIFIER&#127;QUAL_IDENTIFIER&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cac:TenderingCriterionProperty/cbc:ValueDataTypeCode'.</assert>
</rule>

<rule context="cac:ProcurementProject/cbc:ProcurementSubTypeCode">
  <!--{}[](ServicesProjectSubType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](ServicesProjectSubType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;1&#127;2&#127;3&#127;4&#127;5&#127;6&#127;7&#127;8&#127;9&#127;10&#127;11&#127;12&#127;13&#127;14&#127;15&#127;16&#127;17&#127;18&#127;19&#127;20&#127;21&#127;22&#127;23&#127;24&#127;25&#127;26&#127;27&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cac:ProcurementProject/cbc:ProcurementSubTypeCode'.</assert>
</rule>

<rule context="cbc:WeightingTypeCode">
  <!--{}[](WeightingType)-->
  <xsl:text xmlns="" xml:space="preserve">
      </xsl:text><xsl:comment xmlns="">{}[](WeightingType)</xsl:comment>
  <assert><xsl:attribute xmlns="" name="test">( false() or ( (contains(translate('&#127;PERCENTAGE&#127;NUMERIC&#127;','ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),concat('&#127;',translate(.,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz'),'&#127;')) ) ) ) </xsl:attribute>Invalid value: '<value-of select="."/>' for the element 'cbc:WeightingTypeCode'.</assert>
</rule>
<!--
    End of synthesis of rules from code list context associations.
-->
</pattern></schema></xsl:for-each></xsl:template>

<xsl:key name="identification" match="ccs:Identification" use="@xml:id"/>


<!--{}(ConfidentialityLevel)-->
<ccs:Identification xml:id="d3e16">

<Identification>
      <ShortName>ConfidentialityLevel</ShortName>
      <LongName xml:lang="en">CONFIDENTIALITY LEVEL</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/ConfidentialityLevel.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(CountryCodeIDs)-->
<ccs:Identification xml:id="d3e19">

<Identification>
      <ShortName>CountryCodeIdentifier</ShortName>
      <LongName xml:lang="en">ISO 3166-1 alpha 2 country code identifier</LongName>
      <Version>1.0</Version>
      <CanonicalUri>Placeholder</CanonicalUri>
      <CanonicalVersionUri>Placeholder</CanonicalVersionUri>
      <LocationUri>Placeholder</LocationUri>
      <Agency>
         <LongName xml:lang="en">ISO</LongName>
         <Identifier>ISO</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(CriterionElementType)-->
<ccs:Identification xml:id="d3e22">

<Identification>
      <ShortName>CriterionElementType</ShortName>
      <LongName xml:lang="en">CRITERION ELEMENT TYPE</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/CriterionElementType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(CurrencyCodeList)-->
<ccs:Identification xml:id="d3e25">

<Identification>
      <ShortName>CurrencyCode</ShortName>
      <LongName xml:lang="en">ISO 3 Alpha Currency Code</LongName>
      <Version>1.0</Version>
      <CanonicalUri>http://publications.europa.eu/mdr/authority/index.html</CanonicalUri>
      <CanonicalVersionUri>http://publications.europa.eu/mdr/authority/eprocurement/01/index.html</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/CurrencyCode.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">Publications Office of the EU</LongName>
         <Identifier>EU-COM-OP</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(DocRefContentType)-->
<ccs:Identification xml:id="d3e29">

<Identification>
      <ShortName>DocRefContentType</ShortName>
      <LongName xml:lang="en">ADDITIONAL DOCUMENT REFERENCE CONTENT TYPE CODE</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/DocRefContentType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(EOIDType)-->
<ccs:Identification xml:id="d3e32">

<Identification>
      <ShortName>EOIDType</ShortName>
      <LongName xml:lang="en">EOIDType</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/EOIDType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(EOIndustryClassificationCode)-->
<ccs:Identification xml:id="d3e35">

<Identification>
      <ShortName>EOIndustryClassificationCode</ShortName>
      <LongName xml:lang="en">Economic Operator Industry Classification Code</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/EOIndustryClassificationCode.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(EORoleType)-->
<ccs:Identification xml:id="d3e38">

<Identification>
      <ShortName>EORoleType</ShortName>
      <LongName xml:lang="en">ECONOMIC OPERATOR ROLE TYPE</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/EORoleType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(LanguageCodeEU)-->
<ccs:Identification xml:id="d3e42">

<Identification>
      <ShortName>LanguageCodeEU</ShortName>
      <LongName xml:lang="en">LanguageCodeEU</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/LanguageCodeEU.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(EvaluationMethodType)-->
<ccs:Identification xml:id="d3e45">

<Identification>
      <ShortName>EvaluationMethodType</ShortName>
      <LongName xml:lang="en">EVALUATION METHOD TYPE</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/EvaluationMethodType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(ProcedureType)-->
<ccs:Identification xml:id="d3e48">

<Identification>
      <ShortName>ProcedureType</ShortName>
      <LongName xml:lang="en">Procurement Procedure Type</LongName>
      <Version>1.0</Version>
      <CanonicalUri>http://publications.europa.eu/mdr/authority/index.html</CanonicalUri>
      <CanonicalVersionUri>http://publications.europa.eu/mdr/authority/eprocurement/01/index.html</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/ProcedyreType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">Publications Office of the EU</LongName>
         <Identifier>EU-COM-OP</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(ProfileExecutionID)-->
<ccs:Identification xml:id="d3e51">

<Identification>
      <ShortName>ProfileExecutionID</ShortName>
      <LongName xml:lang="en">PROFILE EXECUTION ID</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/ProfileExecutionID.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(ProjectType)-->
<ccs:Identification xml:id="d3e55">

<Identification>
      <ShortName>ProjectType</ShortName>
      <LongName xml:lang="en">Project Type</LongName>
      <Version>1.0</Version>
      <CanonicalUri>http://publications.europa.eu/mdr/authority/index.html</CanonicalUri>
      <CanonicalVersionUri>http://publications.europa.eu/mdr/authority/eprocurement/01/index.html</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/ProjectType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">Publications Office of the EU</LongName>
         <Identifier>EU-COM-OP</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(PropertyGroupType)-->
<ccs:Identification xml:id="d3e58">

<Identification>
      <ShortName>PropertyGroupType</ShortName>
      <LongName xml:lang="en">PROPERTY GROUP TYPE</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/PropertyGroupType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(QualificationApplicationType)-->
<ccs:Identification xml:id="d3e61">

<Identification>
      <ShortName>QualificationApplicationType</ShortName>
      <LongName xml:lang="en">QUALIFICATION APPLICATION TYPE</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/QualificationApplicationType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(ResponseDataType)-->
<ccs:Identification xml:id="d3e64">

<Identification>
      <ShortName>ResponseDataType</ShortName>
      <LongName xml:lang="en">Type of data expected in the response for a criterion requirement</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/ResponseDataType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(ServicesProjectSubType)-->
<ccs:Identification xml:id="d3e68">

<Identification>
      <ShortName>ServicesProjectSubType</ShortName>
      <LongName xml:lang="en">SERVICES SUBTYPE</LongName>
      <Version>1.0</Version>
      <CanonicalUri>http://publications.europa.eu/mdr/authority/index.html</CanonicalUri>
      <CanonicalVersionUri>http://publications.europa.eu/mdr/authority/eprocurement/01/index.html</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/ServicesProjectSubType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">Publications Office of the EU</LongName>
         <Identifier>EU-COM-OP</Identifier>
      </Agency>
   </Identification></ccs:Identification>

<!--{}(WeightingType)-->
<ccs:Identification xml:id="d3e71">

<Identification>
      <ShortName>WeightingType</ShortName>
      <LongName xml:lang="en">WEIGHTING TYPE</LongName>
      <Version>2.1.1</Version>
      <CanonicalUri>https://github.com/ESPD/ESPD-EDM</CanonicalUri>
      <CanonicalVersionUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1</CanonicalVersionUri>
      <LocationUri>https://github.com/ESPD/ESPD-EDM/tree/ESPD-EDM-V2.1.1/docs/src/main/asciidoc/dist/cl/gc/WeightingType.gc</LocationUri>
      <Agency>
         <LongName xml:lang="en">DG GROW (European Commission)</LongName>
         <Identifier>EU-COM-GROW</Identifier>
      </Agency>
   </Identification></ccs:Identification>
<!--
    End of synthesis of tests from code list context associations.
-->
</xsl:stylesheet>