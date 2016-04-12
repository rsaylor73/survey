<!-- Page Content -->

    <!--
    device 0 is desktop
    device 1 is mobile
    -->

    <div class="container">

        <div class="row">
            <div class="col-lg-8 text-left">
					Your feedback is very important to us. To help us ensure that you received the high quality service that we expect, please tell us how we did by completing the following survey.
					<br><br>

                <form action="saveresults" method="post">
                <input type="hidden" name="code" value="{$code}">
                <table class="table">
                
                <!-- Q1 -->
                <tr>
                    <td><b>How did you hear about us?</b></td>
                </tr>
                <tr>
                    <td><select name="q1" required>
                        <option>Repeat guest</option>
                        <option>Friend</option>
                        <option>Dive Show</option>
                        <option>Internet</option>
                        <option>Magazine</option>
                        <option>Dive Store</option>
                        <option>Tour Operator</option>
                        <option>Travel Agent</option>
                    </select></td>
                </tr>

                <!-- Q2 -->
                <tr>
                    <td><b>Why did you choose us?</b></td>
                </tr>
                <tr>
                    <td><textarea name="q2" cols={if $device eq "0"}75{/if}{if $device eq "1"}40{/if} rows=5></textarea></td>
                </tr>

                <!-- Q3 -->
                <tr>
                    <td><b>How were your reservations made?</b></td>
                </tr>
                <tr>
                    <td><select name="q3" id="q3" required>
                        <option value="">--Please Select--</option>
                        <option selected>Aggressor Fleet</option>
						<option>Oceans For Youth</option>
                        <option>Tour Operator</option>
                        <option>Dive Store</option>
                        <option>Travel Agent</option>
                    </select></td>
                </tr>

                <!-- Q4 -->
                <tr><td><b>Please rate your reservation process:</b></td>
                <tr><td><select name="q4" required>
                    <option value="">--Select--</option>
                    <option value="5">5 (Very Satisfied)</option>
                    <option>4</option>
                    <option value="3">3 (Neutral)</option>
                    <option>2</option>
                    <option value="1">1 (Unsatisfied)</option>
                    </select></td>
                </tr>

                <!-- future
                <tr>
                    <td>Did you receive a travel package prior to traveling?</td>
                </tr>
                <tr>
                    <td><select name="q4b"><option>Yes</option><option>No</option></select></td>
                </tr>
                -->

                <!-- Q5 -->
                <tr>
                    <td><b>How can we improve the reservation process?</b></td>
                </tr>
                <tr>
                    <td><textarea name="q5" cols={if $device eq "0"}75{/if}{if $device eq "1"}40{/if} rows=5></textarea></td>
                </tr>

                <!-- Q6 -->
                <tr>
                    <td><b>If your travel arrangements were made by our in house travel department, LiveAboard Vacations, please tell us about your experience.</b></td>
                </tr>
                <tr>
                    <td><textarea name="q6" cols={if $device eq "0"}75{/if}{if $device eq "1"}40{/if} rows=5></textarea></td>
                </tr>


                <!-- Q7 -->
                <tr>
                    <td><b>Please rate your yacht experience:</b></td>
                </tr>
                <tr>
                    <td><b>Accommodations?</b></td>
                </tr>
                <tr>
                    <td><select name="q7a" required>
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        </select>
                    </td>
                </tr>

               <tr>
                    <td><b>Service?</b></td>
                </tr>
                <tr>
                    <td><select name="q7b" required>
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        </select>
                    </td>
                </tr>

               <tr>
                    <td><b>Food?</b></td>
                </tr>
                <tr>
                    <td><select name="q7c" required>
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        </select>
                    </td>
                </tr>

               <tr>
                    <td><b>Diving?</b></td>
                </tr>
                <tr>
                    <td><select name="q7d">
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        <option value="">N/A</option>
                        </select>
                    </td>
                </tr>   

                <!-- Q7A -->
                <tr>
                    <td><b>Please rate your hotel experience:</b></td>
                </tr>
                <tr>
                    <td><b>Accommodations?</b></td>
                </tr>
                <tr>
                    <td><select name="q7a2" required>
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        </select>
                    </td>
                </tr>

               <tr>
                    <td><b>Service?</b></td>
                </tr>
                <tr>
                    <td><select name="q7b2" required>
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        </select>
                    </td>
                </tr>

               <tr>
                    <td><b>Food?</b></td>
                </tr>
                <tr>
                    <td><select name="q7c2" required>
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        </select>
                    </td>
                </tr>

               <tr>
                    <td><b>Presentations?</b></td>
                </tr>
                <tr>
                    <td><select name="q7d2">
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        <option value="">N/A</option>
                        </select>
                    </td>
                </tr>   

                <!-- Q8 -->
                <tr>
                    <td><b>Please tell us about your experience.</b></td>
                </tr>
                <tr>
                    <td><textarea name="q8" cols={if $device eq "0"}75{/if}{if $device eq "1"}40{/if} rows=5></textarea></td>
                </tr>

                <!-- Q9 -->
                <tr>
                    <td><b>How likely are you to continue to travel with us?</b></td>
                </tr>
                <tr>
                    <td>
                    <select name="q9" required>
                    <option value="">--Select--</option>
                    <option value="5">Very Likely</option>
                    <option value="4">Likely</option>
                    <option value="3">Somewhat Likely</option>
                    <option value="2">Unlikely</option>
                    <option value="1">Very Unlikely</option>
                    </select>
                    </td>
                </tr>


                <!-- Q10 -->
                <tr>
                    <td><b>Do you plan to join us on another vacation?</b></td>
                </tr>
                <tr>
                    <td><select name="q10a"><option value="1">Yes</option><option value="0">No</option></select></td>
                </tr>
                <tr>
                    <td><b>If yes, which destination is of particular interest to you?</b></td>
                </tr>
                <tr>
                    <td><textarea name="q10b" cols={if $device eq "0"}75{/if}{if $device eq "1"}40{/if} rows=5></textarea></td>
                </tr>

                <!-- Q11
                N/A
                -->

                <!-- Q12 -->
                <tr>
                    <td><b>What dive publications do you read? (Favorite to N/A)</b></td>
                </tr>



                <tr><td>Alert Diver Magazine</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_0" value="5">
                    <input type="radio" name="q12a_0" value="4">
                    <input type="radio" name="q12a_0" value="3">
                    <input type="radio" name="q12a_0" value="2">
                    <input type="radio" name="q12a_0" value="1">
                    <input type="radio" name="q12a_0" value="0">
                </td></tr>
                <tr><td>Aquanaut</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_20" value="5">
                    <input type="radio" name="q12a_20" value="4">
                    <input type="radio" name="q12a_20" value="3">
                    <input type="radio" name="q12a_20" value="2">
                    <input type="radio" name="q12a_20" value="1">
                    <input type="radio" name="q12a_20" value="0">
                </td></tr>
                <tr><td>Asian Diver</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_16" value="5">
                    <input type="radio" name="q12a_16" value="4">
                    <input type="radio" name="q12a_16" value="3">
                    <input type="radio" name="q12a_16" value="2">
                    <input type="radio" name="q12a_16" value="1">
                    <input type="radio" name="q12a_16" value="0">
                </td></tr>
                <tr><td>Blue Magazine</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_10" value="5">
                    <input type="radio" name="q12a_10" value="4">
                    <input type="radio" name="q12a_10" value="3">
                    <input type="radio" name="q12a_10" value="2">
                    <input type="radio" name="q12a_10" value="1">
                    <input type="radio" name="q12a_10" value="0">
                </tr></tr>
                <tr><td>Buceadores Magazine</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_8" value="5">
                    <input type="radio" name="q12a_8" value="4">
                    <input type="radio" name="q12a_8" value="3">
                    <input type="radio" name="q12a_8" value="2">
                    <input type="radio" name="q12a_8" value="1">
                    <input type="radio" name="q12a_8" value="0">
                </td></tr>
                <tr><td>DIVE UK</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_19" value="5">
                    <input type="radio" name="q12a_19" value="4">
                    <input type="radio" name="q12a_19" value="3">
                    <input type="radio" name="q12a_19" value="2">
                    <input type="radio" name="q12a_19" value="1">
                    <input type="radio" name="q12a_19" value="0">
                </td></tr>
                <tr><td>DIVER UK</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_4" value="5">
                    <input type="radio" name="q12a_4" value="4">
                    <input type="radio" name="q12a_4" value="3">
                    <input type="radio" name="q12a_4" value="2">
                    <input type="radio" name="q12a_4" value="1">
                    <input type="radio" name="q12a_4" value="0">
                </td></tr>
                <tr><td>Dive Center Business</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_18" value="5">
                    <input type="radio" name="q12a_18" value="4">
                    <input type="radio" name="q12a_18" value="3">
                    <input type="radio" name="q12a_18" value="2">
                    <input type="radio" name="q12a_18" value="1">
                    <input type="radio" name="q12a_18" value="0">
                </td></tr>
                <tr><td>Dive Training Magazine</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_1" value="5">
                    <input type="radio" name="q12a_1" value="4">
                    <input type="radio" name="q12a_1" value="3">
                    <input type="radio" name="q12a_1" value="2">
                    <input type="radio" name="q12a_1" value="1">
                    <input type="radio" name="q12a_1" value="0">
                </td></tr>
                <tr><td>Diver Canada</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_11" value="5">
                    <input type="radio" name="q12a_11" value="4">
                    <input type="radio" name="q12a_11" value="3">
                    <input type="radio" name="q12a_11" value="2">
                    <input type="radio" name="q12a_11" value="1">
                    <input type="radio" name="q12a_11" value="0">
                </td></tr>
                <tr><td>EZ Dive Magazine</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_6" value="5">
                    <input type="radio" name="q12a_6" value="4">
                    <input type="radio" name="q12a_6" value="3">
                    <input type="radio" name="q12a_6" value="2">
                    <input type="radio" name="q12a_6" value="1">
                    <input type="radio" name="q12a_6" value="0">
                </td></tr>
                <tr><td>Plongee</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_12" value="5">
                    <input type="radio" name="q12a_12" value="4">
                    <input type="radio" name="q12a_12" value="3">
                    <input type="radio" name="q12a_12" value="2">
                    <input type="radio" name="q12a_12" value="1">
                    <input type="radio" name="q12a_12" value="0">
                </td></tr>
                <tr><td>Scuba Diver (Australasia / Ocean Planet)</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_17" value="5">
                    <input type="radio" name="q12a_17" value="4">
                    <input type="radio" name="q12a_17" value="3">
                    <input type="radio" name="q12a_17" value="2">
                    <input type="radio" name="q12a_17" value="1">
                    <input type="radio" name="q12a_17" value="0">
                </td></tr>
                <tr><td>Scuba Diver AustralAsia</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_7" value="5">
                    <input type="radio" name="q12a_7" value="4">
                    <input type="radio" name="q12a_7" value="3">
                    <input type="radio" name="q12a_7" value="2">
                    <input type="radio" name="q12a_7" value="1">
                    <input type="radio" name="q12a_7" value="0">
                </td></tr>
                <tr><td>Scuba Diving Magazine USA</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_2" value="5">
                    <input type="radio" name="q12a_2" value="4">
                    <input type="radio" name="q12a_2" value="3">
                    <input type="radio" name="q12a_2" value="2">
                    <input type="radio" name="q12a_2" value="1">
                    <input type="radio" name="q12a_2" value="0">
                </td></tr>
                <tr><td>Sport Diver Australia</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_13" value="5">
                    <input type="radio" name="q12a_13" value="4">
                    <input type="radio" name="q12a_13" value="3">
                    <input type="radio" name="q12a_13" value="2">
                    <input type="radio" name="q12a_13" value="1">
                    <input type="radio" name="q12a_13" value="0">
                </td></tr>
                <tr><td>Sport Diver Magazine UK</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_15" value="5">
                    <input type="radio" name="q12a_15" value="4">
                    <input type="radio" name="q12a_15" value="3">
                    <input type="radio" name="q12a_15" value="2">
                    <input type="radio" name="q12a_15" value="1">
                    <input type="radio" name="q12a_15" value="0">
                </td></tr>
                <tr><td>Sport Diver Magazine USA</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_3" value="5">
                    <input type="radio" name="q12a_3" value="4">
                    <input type="radio" name="q12a_3" value="3">
                    <input type="radio" name="q12a_3" value="2">
                    <input type="radio" name="q12a_3" value="1">
                    <input type="radio" name="q12a_3" value="0">
                </td></tr>
                <tr><td>Tauchen Magazine</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_9" value="5">
                    <input type="radio" name="q12a_9" value="4">
                    <input type="radio" name="q12a_9" value="3">
                    <input type="radio" name="q12a_9" value="2">
                    <input type="radio" name="q12a_9" value="1">
                    <input type="radio" name="q12a_9" value="0">
                </td></tr>
                <tr><td>Ultimate Depth Russia</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_14" value="5">
                    <input type="radio" name="q12a_14" value="4">
                    <input type="radio" name="q12a_14" value="3">
                    <input type="radio" name="q12a_14" value="2">
                    <input type="radio" name="q12a_14" value="1">
                    <input type="radio" name="q12a_14" value="0">
                </td></tr>
                <tr><td>unterwasser</td></tr>
                <tr><td>
                    <input type="radio" name="q12a_5" value="5">
                    <input type="radio" name="q12a_5" value="4">
                    <input type="radio" name="q12a_5" value="3">
                    <input type="radio" name="q12a_5" value="2">
                    <input type="radio" name="q12a_5" value="1">
                    <input type="radio" name="q12a_5" value="0">
                </td></tr>

                <!-- Q13 -->
                <tr>
                    <td><b>What scuba websites do you visit? (Favorite to N/A)</b></td>
                </tr>

                <tr><td>AQa</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_15" value="5">
                    <input type="radio" name="q13a_15" value="4">
                    <input type="radio" name="q13a_15" value="3">
                    <input type="radio" name="q13a_15" value="2">
                    <input type="radio" name="q13a_15" value="1">
                    <input type="radio" name="q13a_15" value="0">
                </td></tr>
                <tr><td>Aggressor TV</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_11" value="5">
                    <input type="radio" name="q13a_11" value="4">
                    <input type="radio" name="q13a_11" value="3">
                    <input type="radio" name="q13a_11" value="2">
                    <input type="radio" name="q13a_11" value="1">
                    <input type="radio" name="q13a_11" value="0">
                </td></tr>
                <tr><td>Aqua Lung</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_12" value="5">
                    <input type="radio" name="q13a_12" value="4">
                    <input type="radio" name="q13a_12" value="3">
                    <input type="radio" name="q13a_12" value="2">
                    <input type="radio" name="q13a_12" value="1">
                    <input type="radio" name="q13a_12" value="0">
                </td></tr>
                <tr><td>AustralAsia</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_6" value="5">
                    <input type="radio" name="q13a_6" value="4">
                    <input type="radio" name="q13a_6" value="3">
                    <input type="radio" name="q13a_6" value="2">
                    <input type="radio" name="q13a_6" value="1">
                    <input type="radio" name="q13a_6" value="0">
                </td></tr>
                <tr><td>DEMA</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_13" value="5">
                    <input type="radio" name="q13a_13" value="4">
                    <input type="radio" name="q13a_13" value="3">
                    <input type="radio" name="q13a_13" value="2">
                    <input type="radio" name="q13a_13" value="1">
                    <input type="radio" name="q13a_13" value="0">
                </td></tr>
                <tr><td>DIVE UK</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_7" value="5">
                    <input type="radio" name="q13a_7" value="4">
                    <input type="radio" name="q13a_7" value="3">
                    <input type="radio" name="q13a_7" value="2">
                    <input type="radio" name="q13a_7" value="1">
                    <input type="radio" name="q13a_7" value="0">
                </td></tr>
                <tr><td>DiveNewsWire</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_3" value="5">
                    <input type="radio" name="q13a_3" value="4">
                    <input type="radio" name="q13a_3" value="3">
                    <input type="radio" name="q13a_3" value="2">
                    <input type="radio" name="q13a_3" value="1">
                    <input type="radio" name="q13a_3" value="0">
                </td></tr>
                <tr><td>In Depth</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_16" value="5">
                    <input type="radio" name="q13a_16" value="4">
                    <input type="radio" name="q13a_16" value="3">
                    <input type="radio" name="q13a_16" value="2">
                    <input type="radio" name="q13a_16" value="1">
                    <input type="radio" name="q13a_16" value="0">
                </td></tr>
                <tr><td>Jim Church Photo</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_14" value="5">
                    <input type="radio" name="q13a_14" value="4">
                    <input type="radio" name="q13a_14" value="3">
                    <input type="radio" name="q13a_14" value="2">
                    <input type="radio" name="q13a_14" value="1">
                    <input type="radio" name="q13a_14" value="0">
                </td></tr>
                <tr><td>PADI</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_9" value="5">
                    <input type="radio" name="q13a_9" value="4">
                    <input type="radio" name="q13a_9" value="3">
                    <input type="radio" name="q13a_9" value="2">
                    <input type="radio" name="q13a_9" value="1">
                    <input type="radio" name="q13a_9" value="0">
                </td></tr>
                <tr><td>SSI</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_10" value="5">
                    <input type="radio" name="q13a_10" value="4">
                    <input type="radio" name="q13a_10" value="3">
                    <input type="radio" name="q13a_10" value="2">
                    <input type="radio" name="q13a_10" value="1">
                    <input type="radio" name="q13a_10" value="0">
                </td></tr>
                <tr><td>Scuba Diver USA</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_2" value="5">
                    <input type="radio" name="q13a_2" value="4">
                    <input type="radio" name="q13a_2" value="3">
                    <input type="radio" name="q13a_2" value="2">
                    <input type="radio" name="q13a_2" value="1">
                    <input type="radio" name="q13a_2" value="0">
                </td></tr>
                <tr><td>ScubaBoard</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_0" value="5">
                    <input type="radio" name="q13a_0" value="4">
                    <input type="radio" name="q13a_0" value="3">
                    <input type="radio" name="q13a_0" value="2">
                    <input type="radio" name="q13a_0" value="1">
                    <input type="radio" name="q13a_0" value="0">
                </td></tr>
                <tr><td>Sport Diver USA</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_1" value="5">
                    <input type="radio" name="q13a_1" value="4">
                    <input type="radio" name="q13a_1" value="3">
                    <input type="radio" name="q13a_1" value="2">
                    <input type="radio" name="q13a_1" value="1">
                    <input type="radio" name="q13a_1" value="0">
                </td></tr>
                <tr><td>X-Ray</td></tr>
                <tr><td>
                    <input type="radio" name="q13a_5" value="5">
                    <input type="radio" name="q13a_5" value="4">
                    <input type="radio" name="q13a_5" value="3">
                    <input type="radio" name="q13a_5" value="2">
                    <input type="radio" name="q13a_5" value="1">
                    <input type="radio" name="q13a_5" value="0">
                </td></tr>

                <!-- Q14 -->
                <tr><td><b>On a scale of 10 (best) to 1 (least), how likely are you to recommend us to a friend or colleague?</b></td></tr>
                <tr><td><select name="q14">
                    <option  value="1">1</option><option  value="2">2</option><option  value="3">3</option><option  value="4">4</option><option  value="5">5</option>
                    <option  value="6">6</option><option  value="7">7</option><option  value="8">8</option><option  value="9">9</option><option selected value="10">10</option>
                    </select></td></tr>

                <!-- Q15 -->
                <tr><td><b>On a scale of 10 (best) to 1 (least), how likely are you to recommend {$boat_name} to a friend or colleague?</b></td></tr>
                <tr><td><select name="q15">
                    <option  value="1">1</option><option  value="2">2</option><option  value="3">3</option><option  value="4">4</option><option  value="5">5</option>
                    <option  value="6">6</option><option  value="7">7</option><option  value="8">8</option><option  value="9">9</option><option selected value="10">10</option>
                    </select></td></tr>








                <tr><td><input type="submit" value="Submit Survey" class="btn btn-primary"></td></tr>

                </table>
                </form>


            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
