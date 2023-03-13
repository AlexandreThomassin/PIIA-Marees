<?xml version="1.0" encoding="UTF-8"?>
<sml:SensorML xmlns:sml="http://www.opengis.net/sensorML/1.0.1" xmlns:swe="http://www.opengis.net/swe/1.0.1" xmlns:gml="http://www.opengis.net/gml" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0.1">
  <sml:member>
    <sml:System>
      <!-- ======================================= -->
      <!--               Identifiers               -->
      <!-- ======================================= -->
      <sml:identification>
        <sml:IdentifierList>
          <sml:identifier name="uniqueID">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:uniqueID">
              <sml:value>http://shom.fr/maregraphie/procedure/3</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="id_shom">
            <sml:Term definition="http://">
              <sml:value>3</sml:value>
            </sml:Term>
          </sml:identifier>
          <sml:identifier name="longName">
            <sml:Term definition="urn:ogc:def:identifier:OGC:1.0:longName">
              <sml:value>BREST</sml:value>
            </sml:Term>
          </sml:identifier>
        </sml:IdentifierList>
      </sml:identification>
      <!-- ======================================= -->
      <!--               Classifiers               -->
      <!-- ======================================= -->
      <sml:classification>
        <sml:ClassifierList>
          <sml:classifier name="value">
            <sml:Term definition="http://shom.fr/maregraphie/id_shom">
              <sml:value>3</sml:value>
            </sml:Term>
          </sml:classifier>
          <sml:classifier name="label">
            <sml:Term definition="http://shom.fr/maregraphie/label">
              <sml:value>BREST</sml:value>
            </sml:Term>
          </sml:classifier>
        </sml:ClassifierList>
      </sml:classification>
      <!-- ======================================= -->
      <!--            Constraints              -->
      <!-- =======================================  -->
      <sml:validTime>
        <gml:TimePeriod gml:id="documentValidTime">
          <gml:beginPosition>2050-01-01</gml:beginPosition>
          <gml:endPosition indeterminatePosition="now"/>
        </gml:TimePeriod>
      </sml:validTime>
      <sml:legalConstraint>
        <sml:Rights>
          <sml:documentation>
            <sml:Document>
              <gml:description>Voir les conditions générales d'utilsation sur l'espace de diffusion.</gml:description>
            </sml:Document>
          </sml:documentation>
        </sml:Rights>
      </sml:legalConstraint>
      <!-- ======================================= -->
      <!--            Characteristics              -->
      <!--            in capapabilities...         -->
      <!-- =======================================  -->
      <sml:capabilities name="characterics">
        <swe:DataRecord>
          <swe:field name="ville_d_hebergement">
            <swe:Text definition="http://shom.fr/maregraphie/ville_d_hebergement">
              <swe:value>Brest</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="fuseau_horaire">
            <swe:Text definition="http://shom.fr/maregraphie/fuseau_horaire">
              <swe:value>0</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="longitude">
            <swe:Quantity definition="http://shom.fr/maregraphie/longitude">
              <swe:value>-4.49503994</swe:value>
            </swe:Quantity>
          </swe:field>
          <swe:field name="latitude">
            <swe:Quantity definition="http://shom.fr/maregraphie/latitude">
              <swe:value>48.38290024</swe:value>
            </swe:Quantity>
          </swe:field>
          <swe:field name="sect_geographique">
            <swe:Text definition="http://shom.fr/maregraphie/sect_geographique">
              <swe:value>FM</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="date_prem_obs">
            <swe:Category definition="http://shom.fr/maregraphie/date_prem_obs">
              <swe:value>1846-01-04</swe:value>
            </swe:Category>
          </swe:field>
          <swe:field name="ref_verticale">
            <swe:Text definition="http://shom.fr/maregraphie/ref_verticale">
              <swe:value>/</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="descriptif_capteur">
            <swe:Text definition="http://shom.fr/maregraphie/descriptif_capteur">
              <swe:value>http://refmar.shom.fr/fr/documentation/instrumentation/maregraphes-radar/maregraphe-radar-a-ondes-guidees-bm100a/</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="collocalisation">
            <swe:Text definition="http://shom.fr/maregraphie/collocalisation">
              <swe:value>http://www.sonel.org/spip.php?page=gps&amp;idStation=642</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="etat_maregraphe">
            <swe:Text definition="http://shom.fr/maregraphie/etat_maregraphe">
              <swe:value>OK</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="info_maregraphe">
            <swe:Text definition="http://shom.fr/maregraphie/info_maregraphe">
              <swe:value>http://refmar.shom.fr/BREST</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="journal_de_bord">
            <swe:Text definition="http://shom.fr/maregraphie/journal_de_bord">
              <swe:value>http://refmar.shom.fr/BREST</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="spm">
            <swe:Text definition="http://shom.fr/maregraphie/spm">
              <swe:value>BREST</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="zh_ref">
            <swe:Text definition="http://shom.fr/maregraphie/zh_ref">
              <swe:value>-3.635</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="nom_ref">
            <swe:Text definition="http://shom.fr/maregraphie/nom_ref">
              <swe:value>IGN69</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="zero_hydro">
            <swe:Text definition="http://shom.fr/maregraphie/zero_hydro">
              <swe:value>zero_hydrographique</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="util_fr">
            <swe:Text definition="http://shom.fr/maregraphie/util_fr">
              <swe:value>####util_fr####</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="util_en">
            <swe:Text definition="http://shom.fr/maregraphie/util_en">
              <swe:value>####util_en####</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="reseau">
            <swe:Text definition="http://shom.fr/maregraphie/reseau">
              <swe:value>RONIM</swe:value>
            </swe:Text>
          </swe:field>
          <swe:field name="gestionnaire">
            <swe:Text definition="http://shom.fr/maregraphie/gestionnaire">
              <swe:value>Shom</swe:value>
            </swe:Text>
          </swe:field>
        </swe:DataRecord>
      </sml:capabilities>
      <!-- ================================= -->
      <!--            Capabilities           -->
      <!-- ================================= -->
      <sml:capabilities name="offerings">
        <swe:SimpleDataRecord>
          <swe:field name="Offering_for_sensor">
            <swe:Text definition="urn:ogc:def:identifier:OGC:offeringID">
              <swe:value>http://shom.fr/maregraphie/offering/3</swe:value>
            </swe:Text>
          </swe:field>
        </swe:SimpleDataRecord>
      </sml:capabilities>
      <sml:capabilities name="featuresOfInterest">
        <swe:SimpleDataRecord>
          <swe:field name="featureOfInterestID">
            <swe:Text>
              <swe:value>http://shom.fr/maregraphie/featureOfInterest/3</swe:value>
            </swe:Text>
          </swe:field>
        </swe:SimpleDataRecord>
      </sml:capabilities>
      <sml:capabilities name="organisme">
        <swe:DataRecord definition="http://shom.fr/maregraphie/organisme">
          
          <swe:field name="Shom">
            <swe:DataRecord definition="http://shom.fr/maregraphie/organisme">
              <swe:field name="nom">
                <swe:Text definition="http://shom.fr/maregraphie/nom_organisme">
                  <swe:value>Shom</swe:value>
                </swe:Text>
              </swe:field>
              <swe:field name="logo">
                <swe:Text definition="http://shom.fr/maregraphie/logo">
                  <swe:value>https://services.data.shom.fr/static/logo/DDM/logo_SHOM.png</swe:value>
                </swe:Text>
              </swe:field>
              <swe:field name="URL">
                <swe:Text definition="http://shom.fr/maregraphie/lien">
                  <swe:value>http://www.shom.fr/</swe:value>
                </swe:Text>
              </swe:field>
            </swe:DataRecord>
          </swe:field>
          <swe:field name="Marine nationale">
            <swe:DataRecord definition="http://shom.fr/maregraphie/organisme">
              <swe:field name="nom">
                <swe:Text definition="http://shom.fr/maregraphie/nom_organisme">
                  <swe:value>Marine nationale</swe:value>
                </swe:Text>
              </swe:field>
              <swe:field name="logo">
                <swe:Text definition="http://shom.fr/maregraphie/logo">
                  <swe:value>https://services.data.shom.fr/static/logo/DDM/logo_Marine_nationale.png</swe:value>
                </swe:Text>
              </swe:field>
              <swe:field name="URL">
                <swe:Text definition="http://shom.fr/maregraphie/lien">
                  <swe:value>http://www.defense.gouv.fr/marine</swe:value>
                </swe:Text>
              </swe:field>
            </swe:DataRecord>
          </swe:field>
          
        </swe:DataRecord>
      </sml:capabilities>
      <!-- ============================ -->
      <!--           Contacts           -->
      <!-- ============================ -->
      
      <sml:contact>
        <sml:ContactList>
          <sml:member>
            <sml:ResponsibleParty>
              <sml:individualName>SHOM</sml:individualName>
              <sml:organizationName>SHOM</sml:organizationName>
              <sml:contactInfo>
                <sml:phone>
                  <sml:voice>02 56 31 24 26</sml:voice>
                </sml:phone>
                <sml:address>
                  <sml:deliveryPoint>13 rue du chatellier</sml:deliveryPoint>
                  <sml:city>BREST</sml:city>
                  <sml:postalCode>29200</sml:postalCode>
                  <sml:country>France</sml:country>
                  <sml:electronicMailAddress>refmar@shom.fr</sml:electronicMailAddress>
                </sml:address>
                <sml:onlineResource xlink:href="http://shom.fr/maregraphie"/>
              </sml:contactInfo>
            </sml:ResponsibleParty>
          </sml:member>
        </sml:ContactList>
      </sml:contact>
      
      <!-- ============================ -->
      <!--         Documentation        -->
      <!-- ============================ -->
      <!-- ============================ -->
      <!--            Position          -->
      <!-- ============================ -->
      <sml:position name="sensorPosition">
        <swe:Position fixed="true" referenceFrame="urn:ogc:def:crs:EPSG::4326">
          <swe:location>
            <swe:Vector gml:id="STATION_LOCATION">
              <swe:coordinate name="latitude">
                <swe:Quantity axisID="x">
                  <swe:uom code="degree"/>
                  <swe:value>48.38290024</swe:value>
                </swe:Quantity>
              </swe:coordinate>
              <swe:coordinate name="longitude">
                <swe:Quantity axisID="y">
                  <swe:uom code="degree"/>
                  <swe:value>-4.49503994</swe:value>
                </swe:Quantity>
              </swe:coordinate>
            </swe:Vector>
          </swe:location>
        </swe:Position>
      </sml:position>
      <!-- =============================== -->
      <!--              Inputs             -->
      <!-- =============================== -->
      <sml:inputs>
        <sml:InputList>
          <sml:input name="observedProperty_WaterHeight">
            <swe:ObservableProperty definition="http://shom.fr/maregraphie/observedProperty/WaterHeight"/>
          </sml:input>
        </sml:InputList>
      </sml:inputs>
      <!-- =============================== -->
      <!--              Outputs            -->
      <!-- =============================== -->
      <sml:outputs>
        <sml:OutputList>
          <sml:output name="observedProperty_WaterHeight_1">
            <swe:Count definition="http://shom.fr/maregraphie/observedProperty/WaterHeight/1"/>
          </sml:output>
          <sml:output name="observedProperty_WaterHeight_2">
            <swe:Count definition="http://shom.fr/maregraphie/observedProperty/WaterHeight/2"/>
          </sml:output>
          <sml:output name="observedProperty_WaterHeight_3">
            <swe:Count definition="http://shom.fr/maregraphie/observedProperty/WaterHeight/3"/>
          </sml:output>
          <sml:output name="observedProperty_WaterHeight_4">
            <swe:Count definition="http://shom.fr/maregraphie/observedProperty/WaterHeight/4"/>
          </sml:output>
          <sml:output name="observedProperty_WaterHeight_5">
            <swe:Count definition="http://shom.fr/maregraphie/observedProperty/WaterHeight/5"/>
          </sml:output>
          <sml:output name="observedProperty_WaterHeight_6">
            <swe:Count definition="http://shom.fr/maregraphie/observedProperty/WaterHeight/6"/>
          </sml:output>
        </sml:OutputList>
      </sml:outputs>
      <!-- =============================== -->
      <!--              History            -->
      <!-- =============================== -->
      <sml:history xlink:title="observatory_logbook_events">
        <sml:EventList>
          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:49:03.000Z</sml:date>
              <gml:description>
	Les données validées jusqu&apos;au 10/01/2011 sont disponibles sur le serveur FTP
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:48:05.000Z</sml:date>
              <gml:description>
	Problème au marégraphe. Manque données du 02/12/2009 au 03/12/2009.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-12">
            <sml:Event>
              <sml:date>2011-07-12T12:20:00.000Z</sml:date>
              <gml:description>
	Relance du MCN. Archivage des données.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:49:01.000Z</sml:date>
              <gml:description>
	Relance du MCN. Archivage des données.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2012-05-29">
            <sml:Event>
              <sml:date>2012-05-29T08:24:02.000Z</sml:date>
              <gml:description>
	Contrôle à la sonde lumineuse effectué à basse mer.

	Moyenne des écarts entre la sonde et le MCN : 0.13cm (écart type : 0.04).</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:50:02.000Z</sml:date>
              <gml:description>
	Les données validées jusqu&apos;au 30 mai 2011 sont disponibles sur le serveur FTP.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2013-10-09">
            <sml:Event>
              <sml:date>2013-10-09T10:18:00.000Z</sml:date>
              <gml:description>
	Controle à la sonde lumineuse :

	Moyenne des écarts à BM : 0.15cm (écart type : 0.4 cm)

	Moyenne des écarts à PM : -0.43 cm (écart type : 0.06 cm)
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:47:05.000Z</sml:date>
              <gml:description>
	Le capteur radar BM70 est remplacé par un capteur BM100 (toujours Krohne).
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-12">
            <sml:Event>
              <sml:date>2011-07-12T12:18:04.000Z</sml:date>
              <gml:description>
	Calcul et mise en place dans la centrale de nouveaux coefficients a, b et c suite au Van de Casteele réalisé le 21/03/2011.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:48:04.000Z</sml:date>
              <gml:description>
	Relance du MCN. Archivage des données à 10min et HH.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-08-18">
            <sml:Event>
              <sml:date>2011-08-18T14:27:02.000Z</sml:date>
              <gml:description>
	Contrôle de la sonde lumineuse. Les résultats sont très satisfaisants.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:48:02.000Z</sml:date>
              <gml:description>
	Suite à un test de Van de Cateele réalisé semaine 43, de nouveaux coefficients a1 et b1 de correction ont été calculés et entrés dans la centrale du MCN de Brest.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2013-10-09">
            <sml:Event>
              <sml:date>2013-10-09T10:19:03.000Z</sml:date>
              <gml:description>
	Plantage du MCN. Données aberrantes (supprimées dans les validées au prochain archivage d&apos;octobre).
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2013-10-09">
            <sml:Event>
              <sml:date>2013-10-09T10:16:04.000Z</sml:date>
              <gml:description>
	Changement de la côte suite à un nouveau nivellement.

	La côte entrée le 25/04 était plus haute d&apos;un centimètre. Modification des données du 25/04 au 11/07 dans les validées à 10 min (seront disponible au prochain archivage d&apos;octobre).</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:47:01.000Z</sml:date>
              <gml:description>
	Mise en place d&apos;un afficheur indiquant la hauteur d&apos;eau enregistrée par le marégraphe au dessus de la porte du marégraphe.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:48:00.000Z</sml:date>
              <gml:description>
	Remplacement du prototype par une nouvelle centrale ELTA.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:46:05.000Z</sml:date>
              <gml:description>
	Un premier marégraphe côtier numérique (MCN) est installé à Brest le 05/02/1993: capteur ultrason IEE et centrale d&apos;acquisition MORS HT200.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2011-07-08">
            <sml:Event>
              <sml:date>2011-07-08T09:47:03.000Z</sml:date>
              <gml:description>
	Installation d&apos;un marégraphe radar: capteur BM70 et d&apos;une centrale d&apos;acquisition Elta. A noter que le marégraphe ultrason continue à enregistrer.
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2015-02-05">
            <sml:Event>
              <sml:date>2015-02-05T14:52:01.000Z</sml:date>
              <gml:description>
	Controle à la sonde lumineuse effectué ce jour :

	 

	Moyenne des écarts à BM : 0.45 cm (écart type : 0.12 cm)
</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2016-02-15">
            <sml:Event>
              <sml:date>2016-02-15T12:18:17.936Z</sml:date>
              <gml:description>Contrôle à la sonde lumineuse : Gros écarts à BM. A surveiller possible problème avec le capteur ou mauvais étalonnage. </gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2016-02-15">
            <sml:Event>
              <sml:date>2016-02-15T12:20:35.259Z</sml:date>
              <gml:description>Contrôle à la sonde lumineuse réaliser à BM :
Moyenne des écarts : 0.09 cm (écart type : 0.19 cm).
Pas d&apos;explication pour le moment pour les mauvais résultats du mois de novembre.</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2016-02-23">
            <sml:Event>
              <sml:date>2016-02-23T10:17:56.130Z</sml:date>
              <gml:description>Contrôle à la sonde lumineuse effectué ce jour. 
Moyenne des écarts à BM : 0.62 cm (écart type : 0.14 cm)
Moyenne des écarts à PM : 0.18 cm (écart type : 0 cm).</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2016-11-21">
            <sml:Event>
              <sml:date>2016-11-21T11:20:16.668Z</sml:date>
              <gml:description>Réparation de la ligne téléphonique gérée par DIRISI le matin (liaison avait été sectionnée) : trou dans les données brutes transférées à la minute</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2018-06-20">
            <sml:Event>
              <sml:date>2018-06-20T15:00:12.000Z</sml:date>
              <gml:description>Suite à un problème de synchronisation de l&apos;horloge de la centrale du MCN avec le Superviseur du SHOM, les données du 20 juin 2018 de 04h10 à 09h20 (TU) n&apos;ont pas été enregistrées.</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2018-07-23">
            <sml:Event>
              <sml:date>2018-07-23T12:40:37.000Z</sml:date>
              <gml:description>Erreur de synchronisation d&apos;horloge : L&apos;acquisition de données a du être relancée.</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2018-11-26">
            <sml:Event>
              <sml:date>2018-11-26T18:35:58.000Z</sml:date>
              <gml:description>Erreur de transmission de données temps réel : données accessibles en différé entre le 26/11 et le 27/11</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2019-02-21">
            <sml:Event>
              <sml:date>2019-02-21T10:44:59.000Z</sml:date>
              <gml:description>Erreur serveur Shom entre le 20/02/19 et le 21/02/19 : les données 1 minute n&apos;ont pas été reçues </gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2019-10-03">
            <sml:Event>
              <sml:date>2019-10-03T10:17:15.000Z</sml:date>
              <gml:description>Marégraphe indisponible à partir du 03/10/2019 08:00 jusqu&apos;au 4/10/2019 15:20</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2020-01-02">
            <sml:Event>
              <sml:date>2020-01-02T11:36:04.000Z</sml:date>
              <gml:description>Panne de la centrale d&apos;acquisition du 24/12/2019 4h23 au 02/01/2020 9h35</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2020-05-25">
            <sml:Event>
              <sml:date>2020-05-25T15:27:30.000Z</sml:date>
              <gml:description>La transmission des données temps réelles est indisponible depuis le 20/05/2020. Intervention en cours</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2020-03-25">
            <sml:Event>
              <sml:date>2020-03-25T10:30:05.000Z</sml:date>
              <gml:description>Intervention le 27/04 (retour fonctionnement normale). Du 25/03 au 27/04 : réseau coupé, données temps différé disponibles (source 2)</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2020-05-27">
            <sml:Event>
              <sml:date>2020-05-27T15:43:32.000Z</sml:date>
              <gml:description>intervention effectuée le 27/05/2020. Bon fonctionnement</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2020-10-13">
            <sml:Event>
              <sml:date>2020-10-13T12:16:28.000Z</sml:date>
              <gml:description>Renouvellement des centrales d&apos;acquisition RONIM : Remplacement d&apos;éléments électroniques, réseau et logiciels de traitement de hauteur d&apos;eau. Perturbations possibles sur la diffusion des données.</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2019-06-27">
            <sml:Event>
              <sml:date>2019-06-27T09:56:29.000Z</sml:date>
              <gml:description>Données temps réelles manquantes entre 26/06/2019 et 27/06/2019 suite à une panne réseau</gml:description>
            </sml:Event>
          </sml:member>          <sml:member name="logbook-2021-09-14">
            <sml:Event>
              <sml:date>2021-09-13T22:53:29.000Z</sml:date>
              <gml:description>Transmission temps-réel utilise le nouveau superviseur RONIM. La hauteur calculée est identique par satellite et par Internet</gml:description>
            </sml:Event>
          </sml:member>
        </sml:EventList>
      </sml:history>
    </sml:System>
  </sml:member>
</sml:SensorML>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
