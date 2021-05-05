# hl7 switzerland ig template for IG Publisher
this is a very basic fhir implementation guide template based on from the
[fhir.base.template](https://github.com/HL7/ig-template-base) for the [IG Publisher](https://wiki.hl7.org/IG_Publisher_Documentation)

## Features
* Custom logos (see below)
* Propose a change with is routed through Google Forms to to github

## Using the ig template

Refer to the IG template in your implementation guide (ig.ini) with:
```
template = ch.fhir.ig.template#current
```

* Provide [packages-list.json](https://wiki.hl7.org/index.php?title=FHIR_IG_PackageList_doco) in input/pagecontent directory

## Examples
* [Swiss FHIR Implementation Guide Github Template](https://github.com/ahdis/ch-ig)
* [Swiss CH Core Implementation Guide](http://build.fhir.org/ig/hl7ch/ch-core/index.html)

## Note on HL7/FHIR Logos
this template does not use the hl7/fhir logo, however you can include them by providing logo.html and fhirlogo.hml in input/includes directory and logos in input/pagecontent/assets/images/, check rules [zulip](https://chat.fhir.org/#narrow/stream/179294-committers.2Fannounce/topic/HL7.20Trademark.20Issues).

## Add a feedback form for your ig

In your ig add (or create) to input/data/features.yml the following properties

```yaml
---
feedback:
    active: true
    formUrl: provide link (see below)
```

1. For the form request a copy of the feedback form https://docs.google.com/forms/d/1sdG-LgSlNaSDJ1HHABEVgmk0etXT-qZd-4bh2iBzUps/edit
2. Don't change the different entries, otherwise they will not be prefilled
3. In the kebab menu select Script Editor
4. Adjust handle to github repo organization where ig lives in
5. Adjust repo to github repo name of ig
6. In Script Editor to the left select Trigger (clock icon)
7. Add Trigger for Submit Feedback, select Event Type On Form Submit (you need to confirm this with your google account)
8. Back in the form, copy the link form Send form - link and put it in above field