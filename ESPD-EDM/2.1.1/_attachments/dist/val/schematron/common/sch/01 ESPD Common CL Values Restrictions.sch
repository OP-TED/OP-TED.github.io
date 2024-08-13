<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <title>Common Code lists Values Restrictions</title>
    
    <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
    <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
    
    <pattern id="BR-COM-CL-RESTR">
        
        <!--
		ESPD code list values restrictions - 01 ESPD Common CL Values Resitrctions.sch
		Version 2.1.1
	
        $Id: 01 ESPD Common CL Values Restrictions.sch,v 2.1.1 $

        -->
        <let name="extended" value="if (upper-case(/*[1]/cbc:QualificationApplicationTypeCode) = 'EXTENDED' or upper-case(/*[1]/cbc:QualificationApplicationTypeCode) = 'SELFCONTAINED') then 'EXTENDED' else 'BASIC'"/><!-- TRUE is extended / FALSE is basic -->
        <!-- CONTEXT -->
        <rule context="cbc:ValueDataTypeCode">
            <let name="gc" value="document('../../../../cl/gc/ResponseDataType.gc')//SimpleCodeList"/>
            <let name="currentValue" value="."/>
            
            <assert test="(not(exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue])) or 
                (exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]) and contains($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]/Value[@ColumnRef = 'context']/SimpleValue, $extended)))" 
                flag="fatal" id="BR-COM-CL-RESTR-01.01">The context of the value '<value-of select="local-name()"/>=<value-of select="."/>' does not match the type of 'cbc:QualificationApplicationTypeCode'.</assert>
         </rule>
        <rule context="cbc:WeightingTypeCode">
            <let name="gc" value="document('../../../../cl/gc/WeightingType.gc')//SimpleCodeList"/>
            <let name="currentValue" value="."/>
            
            <assert test="(not(exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue])) or 
                (exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]) and contains($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]/Value[@ColumnRef = 'context']/SimpleValue, $extended)))" 
                flag="fatal" id="BR-COM-CL-RESTR-01.02">The context of the value '<value-of select="local-name()"/>=<value-of select="."/>' does not match the type of 'cbc:QualificationApplicationTypeCode'.</assert>
        </rule>
        <rule context="cac:TenderingCriterion/cbc:EvaluationMethodTypeCode">
            <let name="gc" value="document('../../../../cl/gc/EvaluationMethodType.gc')//SimpleCodeList"/>
            <let name="currentValue" value="."/>
            
            <assert test="(not(exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue])) 
                or (exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]) and contains($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]/Value[@ColumnRef = 'context']/SimpleValue, $extended)))" 
                flag="fatal" id="BR-COM-CL-RESTR-01.03">The context of the value '<value-of select="local-name()"/>=<value-of select="."/>' does not match the type of 'cbc:QualificationApplicationTypeCode'.</assert>
        </rule>
        <rule context="cbc:CriterionTypeCode">
            <let name="gc" value="document('../../../../cl/gc/ESPD-CriteriaTaxonomy_V2.1.1.gc')//SimpleCodeList"/>
            <let name="currentValue" value="."/>
            
            <assert test="(not(exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue])) 
                or (exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]) and contains($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]/Value[@ColumnRef = 'context']/SimpleValue, $extended)))" 
                flag="fatal" id="BR-COM-CL-RESTR-01.04">The context of the value '<value-of select="local-name()"/>=<value-of select="."/>' does not match the type of 'cbc:QualificationApplicationTypeCode'.</assert>
        </rule>
        <rule context="cbc:BooleanGUIControlType">
            <let name="gc" value="document('../../../../cl/gc/BooleanGUIControlType.gc')//SimpleCodeList"/>
            <let name="currentValue" value="."/>
            
            <assert test="(not(exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue])) 
                or (exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]) and contains($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]/Value[@ColumnRef = 'context']/SimpleValue, $extended)))" 
                flag="fatal" id="BR-COM-CL-RESTR-01.05">The context of the value '<value-of select="local-name()"/>=<value-of select="."/>' does not match the type of 'cbc:QualificationApplicationTypeCode'.</assert>
        </rule>
        <rule context="cbc:CPVCodes">
            <let name="gc" value="document('../../../../cl/gc/CPVCodes.gc')//SimpleCodeList"/>
            <let name="currentValue" value="."/>
            
            <assert test="(not(exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue])) 
                or (exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]) and contains($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]/Value[@ColumnRef = 'context']/SimpleValue, $extended)))" 
                flag="fatal" id="BR-COM-CL-RESTR-01.06">The context of the value '<value-of select="local-name()"/>=<value-of select="."/>' does not match the type of 'cbc:QualificationApplicationTypeCode'.</assert>
        </rule>        
        <!-- STATUS -->
        <rule context="cac:EconomicOperatorParty/cac:EconomicOperatorRole/cbc:RoleCode">
            <let name="gc" value="document('../../../../cl/gc/EORoleType.gc')//SimpleCodeList"/>
            <let name="currentValue" value="."/>
            
            <assert test="(not(exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue])) 
                or (exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]) and ($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]/Value[@ColumnRef = 'status']/SimpleValue = 'ACTIVE')))" 
                flag="warning" id="BR-COM-CL-RESTR-02.01">The status of the value '<value-of select="local-name()"/>=<value-of select="."/>' is deprecated, instead, use a code in this same code list with the status='ACTIVE'.</assert>
        </rule>
        
        <rule context="cbc:QualificationApplicationTypeCode">
            <let name="gc" value="document('../../../../cl/gc/QualificationApplicationType.gc')//SimpleCodeList"/>
            <let name="currentValue" value="."/>
            
            <assert test="(not(exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue])) 
                or (exists($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]) and ($gc/Row[Value[@ColumnRef = 'code']/SimpleValue = $currentValue]/Value[@ColumnRef = 'status']/SimpleValue = 'ACTIVE')))" 
                flag="warning" id="BR-COM-CL-RESTR-02.02">The status of the value '<value-of select="local-name()"/>=<value-of select="."/>' is deprecated, instead, use a code in this same code list with the status='ACTIVE'.</assert>
        </rule>
    </pattern>
</schema>
