# SCEXIN
A system for organizing AGI systems into sets of experiences and insights.

~~~SCEXIN
<screen>
  <container>
    <agent_name></agent_name>

    <chapter_one>
      <experience>
        <ex_date></ex_date>
        <ex_feeling></ex_feeling>
        <ex_relationships><ex_relationships>
        <ex_additional></ex_additional>
      </experience>

      <insight>
        <in_reflection></in_reflection>
        <in_adage></in_adage>
      </insight>
    </chapter_one>
  </container>
</screen>
~~~

## Replaced strings
Experience books are broken down into chapters, with string replacement used to train different chapters.

### Data based on experience.
~~~
#{ex_date}
#{ex_feeling}
#{ex_relationship}
#{ex_addition}
~~~

### Data based on insight.
~~~
#{in_reflection}
#{in_adage}
~~~

## Extracting data
Information from experience is this used to inform the insight given to a student.

## Recording experience for gradual knowledge gained
This can be used for more gradualist end game scenarios that record the wisdim gains from previous heroes.
~~~
  0.50 Total defeat, record experience
 12.75 Near total defeat, record experience
 25.00 Partial defeat, record experience
 37.50 Almost semi-victorious, record experience
 50.00 Semi-Victory, record experience
 62.50 Nearing partial victory, record experience
 75.00 Partial victory, record experience
 87.50 Near total victory, record experience
100.00 Total victory, record experience
~~~
