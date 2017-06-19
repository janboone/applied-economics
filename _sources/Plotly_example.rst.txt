
Plotting health care expenditure by age group
=============================================

We use here the following
`data <http://www.cbs.nl/nl-NL/menu/themas/gezondheid-welzijn/cijfers/incidenteel/maatwerk/zorgkosten-vanuit-de-zorgverzekeringswet-naar-leeftijd-en-huishoudensinkomen-2012.htm>`__
We convert this data to csv and load it as dataframe using pandas. Costs
are in euro's.

.. code:: python

    import pandas as pd
    import plotly.plotly as py
    from plotly.graph_objs import *
    import plotly.tools as tls
    import numpy as np
    
    
    df = pd.read_csv("zorgkostenvanuitdezorgverzekeringswetnaarleeftijdenhuishoudensinkomen2012.csv", sep=',',skipinitialspace=True, header = 1)

.. code:: python

    df




.. raw:: html

    <div>
    <table border="1" class="dataframe">
      <thead>
        <tr style="text-align: right;">
          <th></th>
          <th>Leeftijdsklasse</th>
          <th>Kwintielen huishoudinkomen</th>
          <th>Decielen Zorgkosten</th>
          <th>Gemiddelde Zvw kosten</th>
          <th>Gemiddelde Zvw kosten excl huisartsenzorg</th>
          <th>Gemiddelde Zvw kosten excl huisartsenzorg en geboortezorg</th>
          <th>Gemiddeld besteedbaar huishoudensinkomen</th>
          <th>Aantal personen</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>0</th>
          <td>0 t/m 19 jaar</td>
          <td>1e kwintiel</td>
          <td>1</td>
          <td>64</td>
          <td>6</td>
          <td>6</td>
          <td>9870</td>
          <td>83113</td>
        </tr>
        <tr>
          <th>1</th>
          <td>0 t/m 19 jaar</td>
          <td>1e kwintiel</td>
          <td>2</td>
          <td>121</td>
          <td>38</td>
          <td>38</td>
          <td>10327</td>
          <td>83113</td>
        </tr>
        <tr>
          <th>2</th>
          <td>0 t/m 19 jaar</td>
          <td>1e kwintiel</td>
          <td>3</td>
          <td>175</td>
          <td>82</td>
          <td>82</td>
          <td>10377</td>
          <td>83113</td>
        </tr>
        <tr>
          <th>3</th>
          <td>0 t/m 19 jaar</td>
          <td>1e kwintiel</td>
          <td>4</td>
          <td>241</td>
          <td>134</td>
          <td>134</td>
          <td>10451</td>
          <td>83113</td>
        </tr>
        <tr>
          <th>4</th>
          <td>0 t/m 19 jaar</td>
          <td>1e kwintiel</td>
          <td>5</td>
          <td>327</td>
          <td>210</td>
          <td>210</td>
          <td>10597</td>
          <td>83113</td>
        </tr>
        <tr>
          <th>5</th>
          <td>0 t/m 19 jaar</td>
          <td>1e kwintiel</td>
          <td>6</td>
          <td>449</td>
          <td>325</td>
          <td>324</td>
          <td>10693</td>
          <td>83113</td>
        </tr>
        <tr>
          <th>6</th>
          <td>0 t/m 19 jaar</td>
          <td>1e kwintiel</td>
          <td>7</td>
          <td>637</td>
          <td>503</td>
          <td>503</td>
          <td>10650</td>
          <td>83113</td>
        </tr>
        <tr>
          <th>7</th>
          <td>0 t/m 19 jaar</td>
          <td>1e kwintiel</td>
          <td>8</td>
          <td>977</td>
          <td>837</td>
          <td>837</td>
          <td>10702</td>
          <td>83113</td>
        </tr>
        <tr>
          <th>8</th>
          <td>0 t/m 19 jaar</td>
          <td>1e kwintiel</td>
          <td>9</td>
          <td>1691</td>
          <td>1540</td>
          <td>1540</td>
          <td>10874</td>
          <td>83113</td>
        </tr>
        <tr>
          <th>9</th>
          <td>0 t/m 19 jaar</td>
          <td>1e kwintiel</td>
          <td>10</td>
          <td>8413</td>
          <td>8244</td>
          <td>8234</td>
          <td>10763</td>
          <td>83113</td>
        </tr>
        <tr>
          <th>10</th>
          <td>0 t/m 19 jaar</td>
          <td>2e kwintiel</td>
          <td>1</td>
          <td>78</td>
          <td>11</td>
          <td>11</td>
          <td>17534</td>
          <td>73821</td>
        </tr>
        <tr>
          <th>11</th>
          <td>0 t/m 19 jaar</td>
          <td>2e kwintiel</td>
          <td>2</td>
          <td>129</td>
          <td>46</td>
          <td>46</td>
          <td>17587</td>
          <td>73822</td>
        </tr>
        <tr>
          <th>12</th>
          <td>0 t/m 19 jaar</td>
          <td>2e kwintiel</td>
          <td>3</td>
          <td>178</td>
          <td>86</td>
          <td>86</td>
          <td>17584</td>
          <td>73822</td>
        </tr>
        <tr>
          <th>13</th>
          <td>0 t/m 19 jaar</td>
          <td>2e kwintiel</td>
          <td>4</td>
          <td>236</td>
          <td>131</td>
          <td>131</td>
          <td>17575</td>
          <td>73822</td>
        </tr>
        <tr>
          <th>14</th>
          <td>0 t/m 19 jaar</td>
          <td>2e kwintiel</td>
          <td>5</td>
          <td>312</td>
          <td>197</td>
          <td>197</td>
          <td>17569</td>
          <td>73822</td>
        </tr>
        <tr>
          <th>15</th>
          <td>0 t/m 19 jaar</td>
          <td>2e kwintiel</td>
          <td>6</td>
          <td>423</td>
          <td>299</td>
          <td>299</td>
          <td>17560</td>
          <td>73822</td>
        </tr>
        <tr>
          <th>16</th>
          <td>0 t/m 19 jaar</td>
          <td>2e kwintiel</td>
          <td>7</td>
          <td>597</td>
          <td>465</td>
          <td>465</td>
          <td>17549</td>
          <td>73822</td>
        </tr>
        <tr>
          <th>17</th>
          <td>0 t/m 19 jaar</td>
          <td>2e kwintiel</td>
          <td>8</td>
          <td>916</td>
          <td>776</td>
          <td>776</td>
          <td>17548</td>
          <td>73822</td>
        </tr>
        <tr>
          <th>18</th>
          <td>0 t/m 19 jaar</td>
          <td>2e kwintiel</td>
          <td>9</td>
          <td>1606</td>
          <td>1456</td>
          <td>1456</td>
          <td>17539</td>
          <td>73822</td>
        </tr>
        <tr>
          <th>19</th>
          <td>0 t/m 19 jaar</td>
          <td>2e kwintiel</td>
          <td>10</td>
          <td>7415</td>
          <td>7248</td>
          <td>7244</td>
          <td>17533</td>
          <td>73822</td>
        </tr>
        <tr>
          <th>20</th>
          <td>0 t/m 19 jaar</td>
          <td>3e kwintiel</td>
          <td>1</td>
          <td>80</td>
          <td>12</td>
          <td>12</td>
          <td>21907</td>
          <td>74115</td>
        </tr>
        <tr>
          <th>21</th>
          <td>0 t/m 19 jaar</td>
          <td>3e kwintiel</td>
          <td>2</td>
          <td>128</td>
          <td>46</td>
          <td>46</td>
          <td>21925</td>
          <td>74116</td>
        </tr>
        <tr>
          <th>22</th>
          <td>0 t/m 19 jaar</td>
          <td>3e kwintiel</td>
          <td>3</td>
          <td>174</td>
          <td>83</td>
          <td>83</td>
          <td>21926</td>
          <td>74116</td>
        </tr>
        <tr>
          <th>23</th>
          <td>0 t/m 19 jaar</td>
          <td>3e kwintiel</td>
          <td>4</td>
          <td>227</td>
          <td>124</td>
          <td>124</td>
          <td>21926</td>
          <td>74116</td>
        </tr>
        <tr>
          <th>24</th>
          <td>0 t/m 19 jaar</td>
          <td>3e kwintiel</td>
          <td>5</td>
          <td>296</td>
          <td>183</td>
          <td>183</td>
          <td>21914</td>
          <td>74116</td>
        </tr>
        <tr>
          <th>25</th>
          <td>0 t/m 19 jaar</td>
          <td>3e kwintiel</td>
          <td>6</td>
          <td>399</td>
          <td>278</td>
          <td>278</td>
          <td>21907</td>
          <td>74116</td>
        </tr>
        <tr>
          <th>26</th>
          <td>0 t/m 19 jaar</td>
          <td>3e kwintiel</td>
          <td>7</td>
          <td>559</td>
          <td>430</td>
          <td>430</td>
          <td>21902</td>
          <td>74116</td>
        </tr>
        <tr>
          <th>27</th>
          <td>0 t/m 19 jaar</td>
          <td>3e kwintiel</td>
          <td>8</td>
          <td>851</td>
          <td>713</td>
          <td>713</td>
          <td>21898</td>
          <td>74116</td>
        </tr>
        <tr>
          <th>28</th>
          <td>0 t/m 19 jaar</td>
          <td>3e kwintiel</td>
          <td>9</td>
          <td>1492</td>
          <td>1351</td>
          <td>1350</td>
          <td>21893</td>
          <td>74116</td>
        </tr>
        <tr>
          <th>29</th>
          <td>0 t/m 19 jaar</td>
          <td>3e kwintiel</td>
          <td>10</td>
          <td>6961</td>
          <td>6801</td>
          <td>6798</td>
          <td>21873</td>
          <td>74115</td>
        </tr>
        <tr>
          <th>...</th>
          <td>...</td>
          <td>...</td>
          <td>...</td>
          <td>...</td>
          <td>...</td>
          <td>...</td>
          <td>...</td>
          <td>...</td>
        </tr>
        <tr>
          <th>220</th>
          <td>80 jaar en ouder</td>
          <td>3e kwintiel</td>
          <td>1</td>
          <td>157</td>
          <td>68</td>
          <td>68</td>
          <td>21808</td>
          <td>12941</td>
        </tr>
        <tr>
          <th>221</th>
          <td>80 jaar en ouder</td>
          <td>3e kwintiel</td>
          <td>2</td>
          <td>564</td>
          <td>397</td>
          <td>397</td>
          <td>21777</td>
          <td>12942</td>
        </tr>
        <tr>
          <th>222</th>
          <td>80 jaar en ouder</td>
          <td>3e kwintiel</td>
          <td>3</td>
          <td>1011</td>
          <td>815</td>
          <td>815</td>
          <td>21774</td>
          <td>12942</td>
        </tr>
        <tr>
          <th>223</th>
          <td>80 jaar en ouder</td>
          <td>3e kwintiel</td>
          <td>4</td>
          <td>1519</td>
          <td>1300</td>
          <td>1300</td>
          <td>21759</td>
          <td>12942</td>
        </tr>
        <tr>
          <th>224</th>
          <td>80 jaar en ouder</td>
          <td>3e kwintiel</td>
          <td>5</td>
          <td>2120</td>
          <td>1876</td>
          <td>1876</td>
          <td>21730</td>
          <td>12941</td>
        </tr>
        <tr>
          <th>225</th>
          <td>80 jaar en ouder</td>
          <td>3e kwintiel</td>
          <td>6</td>
          <td>2887</td>
          <td>2618</td>
          <td>2618</td>
          <td>21766</td>
          <td>12942</td>
        </tr>
        <tr>
          <th>226</th>
          <td>80 jaar en ouder</td>
          <td>3e kwintiel</td>
          <td>7</td>
          <td>3956</td>
          <td>3657</td>
          <td>3657</td>
          <td>21754</td>
          <td>12942</td>
        </tr>
        <tr>
          <th>227</th>
          <td>80 jaar en ouder</td>
          <td>3e kwintiel</td>
          <td>8</td>
          <td>5756</td>
          <td>5411</td>
          <td>5411</td>
          <td>21734</td>
          <td>12942</td>
        </tr>
        <tr>
          <th>228</th>
          <td>80 jaar en ouder</td>
          <td>3e kwintiel</td>
          <td>9</td>
          <td>9327</td>
          <td>8934</td>
          <td>8934</td>
          <td>21734</td>
          <td>12942</td>
        </tr>
        <tr>
          <th>229</th>
          <td>80 jaar en ouder</td>
          <td>3e kwintiel</td>
          <td>10</td>
          <td>22590</td>
          <td>22103</td>
          <td>22103</td>
          <td>21714</td>
          <td>12941</td>
        </tr>
        <tr>
          <th>230</th>
          <td>80 jaar en ouder</td>
          <td>4e kwintiel</td>
          <td>1</td>
          <td>130</td>
          <td>51</td>
          <td>51</td>
          <td>27467</td>
          <td>9220</td>
        </tr>
        <tr>
          <th>231</th>
          <td>80 jaar en ouder</td>
          <td>4e kwintiel</td>
          <td>2</td>
          <td>513</td>
          <td>351</td>
          <td>351</td>
          <td>27326</td>
          <td>9221</td>
        </tr>
        <tr>
          <th>232</th>
          <td>80 jaar en ouder</td>
          <td>4e kwintiel</td>
          <td>3</td>
          <td>940</td>
          <td>748</td>
          <td>748</td>
          <td>27388</td>
          <td>9221</td>
        </tr>
        <tr>
          <th>233</th>
          <td>80 jaar en ouder</td>
          <td>4e kwintiel</td>
          <td>4</td>
          <td>1429</td>
          <td>1215</td>
          <td>1215</td>
          <td>27368</td>
          <td>9221</td>
        </tr>
        <tr>
          <th>234</th>
          <td>80 jaar en ouder</td>
          <td>4e kwintiel</td>
          <td>5</td>
          <td>2002</td>
          <td>1768</td>
          <td>1768</td>
          <td>27347</td>
          <td>9221</td>
        </tr>
        <tr>
          <th>235</th>
          <td>80 jaar en ouder</td>
          <td>4e kwintiel</td>
          <td>6</td>
          <td>2729</td>
          <td>2470</td>
          <td>2470</td>
          <td>27340</td>
          <td>9221</td>
        </tr>
        <tr>
          <th>236</th>
          <td>80 jaar en ouder</td>
          <td>4e kwintiel</td>
          <td>7</td>
          <td>3732</td>
          <td>3438</td>
          <td>3438</td>
          <td>27344</td>
          <td>9221</td>
        </tr>
        <tr>
          <th>237</th>
          <td>80 jaar en ouder</td>
          <td>4e kwintiel</td>
          <td>8</td>
          <td>5412</td>
          <td>5074</td>
          <td>5074</td>
          <td>27332</td>
          <td>9221</td>
        </tr>
        <tr>
          <th>238</th>
          <td>80 jaar en ouder</td>
          <td>4e kwintiel</td>
          <td>9</td>
          <td>8809</td>
          <td>8417</td>
          <td>8417</td>
          <td>27328</td>
          <td>9221</td>
        </tr>
        <tr>
          <th>239</th>
          <td>80 jaar en ouder</td>
          <td>4e kwintiel</td>
          <td>10</td>
          <td>21662</td>
          <td>21188</td>
          <td>21188</td>
          <td>27360</td>
          <td>9220</td>
        </tr>
        <tr>
          <th>240</th>
          <td>80 jaar en ouder</td>
          <td>5e kwintiel</td>
          <td>1</td>
          <td>107</td>
          <td>40</td>
          <td>40</td>
          <td>43231</td>
          <td>6975</td>
        </tr>
        <tr>
          <th>241</th>
          <td>80 jaar en ouder</td>
          <td>5e kwintiel</td>
          <td>2</td>
          <td>471</td>
          <td>312</td>
          <td>312</td>
          <td>44395</td>
          <td>6975</td>
        </tr>
        <tr>
          <th>242</th>
          <td>80 jaar en ouder</td>
          <td>5e kwintiel</td>
          <td>3</td>
          <td>885</td>
          <td>696</td>
          <td>696</td>
          <td>45054</td>
          <td>6976</td>
        </tr>
        <tr>
          <th>243</th>
          <td>80 jaar en ouder</td>
          <td>5e kwintiel</td>
          <td>4</td>
          <td>1358</td>
          <td>1147</td>
          <td>1147</td>
          <td>44134</td>
          <td>6975</td>
        </tr>
        <tr>
          <th>244</th>
          <td>80 jaar en ouder</td>
          <td>5e kwintiel</td>
          <td>5</td>
          <td>1926</td>
          <td>1689</td>
          <td>1689</td>
          <td>44796</td>
          <td>6976</td>
        </tr>
        <tr>
          <th>245</th>
          <td>80 jaar en ouder</td>
          <td>5e kwintiel</td>
          <td>6</td>
          <td>2637</td>
          <td>2376</td>
          <td>2376</td>
          <td>45075</td>
          <td>6975</td>
        </tr>
        <tr>
          <th>246</th>
          <td>80 jaar en ouder</td>
          <td>5e kwintiel</td>
          <td>7</td>
          <td>3622</td>
          <td>3331</td>
          <td>3331</td>
          <td>45059</td>
          <td>6976</td>
        </tr>
        <tr>
          <th>247</th>
          <td>80 jaar en ouder</td>
          <td>5e kwintiel</td>
          <td>8</td>
          <td>5205</td>
          <td>4867</td>
          <td>4867</td>
          <td>44450</td>
          <td>6975</td>
        </tr>
        <tr>
          <th>248</th>
          <td>80 jaar en ouder</td>
          <td>5e kwintiel</td>
          <td>9</td>
          <td>8526</td>
          <td>8139</td>
          <td>8139</td>
          <td>44849</td>
          <td>6976</td>
        </tr>
        <tr>
          <th>249</th>
          <td>80 jaar en ouder</td>
          <td>5e kwintiel</td>
          <td>10</td>
          <td>21574</td>
          <td>21099</td>
          <td>21099</td>
          <td>45152</td>
          <td>6975</td>
        </tr>
      </tbody>
    </table>
    <p>250 rows × 8 columns</p>
    </div>



.. code:: python

    print [age for age in sorted(set(df['Leeftijdsklasse']))]


.. parsed-literal::

    ['0 t/m 19 jaar', '20 t/m 39 jaar', '40 t/m 59 jaar', '60 t/m 79 jaar', '80 jaar en ouder']


.. code:: python

    set(df['Kwintielen huishoudinkomen'])




.. parsed-literal::

    {'1e kwintiel', '2e kwintiel', '3e kwintiel', '4e kwintiel', '5e kwintiel'}



.. code:: python

    income_average = {}
    cost_average = {}
    for age in sorted(set(df['Leeftijdsklasse'])):
        income_average[age] = [np.mean(df[df['Leeftijdsklasse']==age]['Gemiddeld besteedbaar huishoudensinkomen'][df['Kwintielen huishoudinkomen']==income]) for income in sorted(set(df['Kwintielen huishoudinkomen']))]
        cost_average[age] =   [np.mean(df[df['Leeftijdsklasse']==age]['Gemiddelde Zvw kosten'][df['Kwintielen huishoudinkomen']==income]) for income in sorted(set(df['Kwintielen huishoudinkomen']))]

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



