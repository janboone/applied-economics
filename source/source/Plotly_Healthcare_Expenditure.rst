
Plotting health care expenditure by age group
=============================================

We use here the following
`data <http://www.cbs.nl/nl-NL/menu/themas/gezondheid-welzijn/cijfers/incidenteel/maatwerk/zorgkosten-vanuit-de-zorgverzekeringswet-naar-leeftijd-en-huishoudensinkomen-2012.htm>`__
We convert this data to csv and load it as dataframe using pandas. Costs
are in euro's.

This data allows us to analyze the relation between health care
expenditure, age and income. One expects that people with a higher
income spend more money on health care (health is a "normal good"). On
the other hand, people with higher incomes tend to be healthier and may
spend less on health care. Which effect dominates?

Further, one would expect that people spend more on health care as they
get older.

But people usually see their income rise as well with age. Can we show
the effect of income and age separately in one graph?

.. code:: python

    import pandas as pd
    import plotly.plotly as py
    from plotly.graph_objs import *
    import plotly.tools as tls
    import numpy as np
    
    
    df = pd.read_csv("zorgkostenvanuitdezorgverzekeringswetnaarleeftijdenhuishoudensinkomen2012.csv", \
                     sep=',',skipinitialspace=True, header = 1)

If you want to see what this data look like, type ``df`` in an empty
cell and shift-enter.

The data contains 5 age categories ("Leeftijdsklasse" in Dutch) and for
each age category we have 5 quantiles of household income ("Kwintielen
huishoudinkomen").

Other columns are deciles of health care expenditures ("decielen
zorgkosten"), average health care expenditures covered by basic
insurance ("gemiddelde zvw kosten"), average costs without primary
physician ("gemiddelde kosten excl. huisartsenzorg"), average costs
without primary physician and birth care ("gemiddelde kosten excl.
huisartsenzorg en geboortezorg"), average household income ("gemiddeld
besteedbaar huishoudensinkomen") and number of people ("aantal
personen") per row in the table.

To see, for instance, the age categories used and the quantiles, one can
use a command like:

.. code:: python

    print [age for age in sorted(set(df['Leeftijdsklasse']))]
    print [age for age in sorted(set(df['Kwintielen huishoudinkomen']))]



.. parsed-literal::

    ['0 t/m 19 jaar', '20 t/m 39 jaar', '40 t/m 59 jaar', '60 t/m 79 jaar', '80 jaar en ouder']
    ['1e kwintiel', '2e kwintiel', '3e kwintiel', '4e kwintiel', '5e kwintiel']


We want to plot health care expenditures against household income. In
order to do this, we calculate average household income for each
age-income category and the average health care expenditures covered by
basic insurance.

We create two dictionaries (one for income, one for health care costs).
A dictionary contains for each age group, the vector of variables
(income, costs resp.)

.. code:: python

    income_average = {}
    cost_average = {}
    for age in sorted(set(df['Leeftijdsklasse'])):
        income_average[age] = [np.mean(df[df['Leeftijdsklasse']==age]['Gemiddeld besteedbaar huishoudensinkomen']\
                                       [df['Kwintielen huishoudinkomen']==income]) for income in \
                               sorted(set(df['Kwintielen huishoudinkomen']))]
        cost_average[age] =   [np.mean(df[df['Leeftijdsklasse']==age]['Gemiddelde Zvw kosten']\
                                       [df['Kwintielen huishoudinkomen']==income]) for income in \
                               sorted(set(df['Kwintielen huishoudinkomen']))]

Plotly works with ``Scatter`` to combine data and characteristics of the
plots (like "markers+lines", the text you see when hovering over the
plotted line).

.. code:: python

    age0_19 = Scatter(
        x=income_average['0 t/m 19 jaar'],
        y=cost_average['0 t/m 19 jaar'],
        mode='markers+lines', 
        name = '0 t/m 19 jaar',
        text = sorted(set(df['Kwintielen huishoudinkomen']))
    )
    age20_39 = Scatter(
        x=income_average['20 t/m 39 jaar'],
        y=cost_average['20 t/m 39 jaar'],
        mode='markers+lines',
        name = '20 t/m 39 jaar',
        text = sorted(set(df['Kwintielen huishoudinkomen']))
    )
    
    age40_59 = Scatter(
        x=income_average['40 t/m 59 jaar'],
        y=cost_average['40 t/m 59 jaar'],
        mode='markers+lines', 
        name = '40 t/m 59 jaar',
        text = sorted(set(df['Kwintielen huishoudinkomen']))
    )
    age60_79 = Scatter(
        x=income_average['60 t/m 79 jaar'],
        y=cost_average['60 t/m 79 jaar'],
        mode='markers+lines',
        name = '60 t/m 79 jaar',
        text = sorted(set(df['Kwintielen huishoudinkomen']))
    )
    age80 = Scatter(
        x=income_average['80 jaar en ouder'],
        y=cost_average['80 jaar en ouder'],
        mode='markers+lines',
        name = '80 jaar en ouder',
        text = sorted(set(df['Kwintielen huishoudinkomen']))
    )
    
    
    
    
    
    layout = Layout(
        title='Health care expend. vs. income for different age cohorts in the Netherlands 2012',
        xaxis=XAxis(
            title='income',
            titlefont=Font(
                family='Courier New, monospace',
                size=18,
                color='#7f7f7f'
            )
        ),
        yaxis=YAxis(
            title='health care expenditure',
            titlefont=Font(
                family='Courier New, monospace',
                size=18,
                color='#7f7f7f'
            )
        )
    )
    
    data = Data([age0_19,age20_39,age40_59,age60_79,age80])
    fig = Figure(data=data, layout=layout)
    py.plot(fig, filename='scatter income health care costs')
    tls.embed("https://plot.ly/~janboone/56")




.. raw:: html

    <iframe id="igraph" scrolling="no" style="border:none;"seamless="seamless" src="https://plot.ly/~janboone/56.embed" height="525" width="100%"></iframe>



By clicking on the legend, you can make lines (dis)appear. By hovering
over the lines, you can see more information.

Coming back to the questions in the beginning:

-  what is the relation between income and health care expenditure?
-  between age and health care expenditure?
-  between age and income?

