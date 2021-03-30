<template>
    <div class="container-fluid white">
        <div class="container">
            <section class="bg-dark text-white">
                <div class="container ">
                    <h2  class="font-weight-bold" style="text-align: center">Thank You For Your Recent Purchase!</h2>
                    <h3 class="font-weight-bold">Redemption Instructions</h3>
                    <h5>1. Select the redeem button below to begin redeeming each separate offer.</h5>
                    <h5>2. Check on the physical voucher for the individual voucher code</h5>
                    <h5>3. Follow the on-screen instructions and enter the code in the redemption area</h5><br>
                    <p>*Use the Step-by-Step for detailed instructions on how to redeem and how to unsubscribe at the end of the offer</p>
                </div>
            </section>

            <div class="box">

                <div class="card border-light"  v-for="user in users" :key="user.id">


                    <div class="card-body ">
                        <img class="card-img-top" src='images/card.jpeg' alt="Card image cap">
                        <div class="card border-dark text-center" style="max-width: auto;">
                            <div class="card-body bg-dark text-white">

                                <p class="card-text"><b>{{ user.name }}</b></p>
                                <h5 class="card-title">Code: {{ user.VoucherCode }} </h5>
                                <button type="button" class="btn btn-success btn-block">Step by step guide</button>
                            </div>
                            <div class="card-footer bg-transparent border-dark">
                                <a href="https://www.google.com/" type="button" class="btn btn-outline-light bg-secondary btn-block">Reedom</a>
                            </div>
                        </div>


                    </div>
                </div>

            </div>
        </div>
    </div>
</template>

<style scoped>
section{
    background-color: lightgray;
    padding : 10px;
    margin:10px 0px 10px 0px;
}
.card{
    background: black;
    padding:0px;
    margin:0px;
}
.box {
    display: flex;
    flex-wrap: wrap;
}
.box>* {
    flex: 1 1 320px;
}
.mybox {
    display: flex;
    flex-wrap: wrap;
}
.mybox>* {
    flex: 1 1 320px;
}
.black {
    background:black;
}
</style>

<script>
export default {

    data() {
        return {
            users: {},
            user_name: this.$userId,
        }
    },
    methods: {
        getUser(){
            axios.get('/getallservices')
                .then((response)=>{
                    this.users = response.data
                })
        }
    },
    created() {
        this.getUser()
    }
}
</script>
