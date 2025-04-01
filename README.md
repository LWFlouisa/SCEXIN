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
