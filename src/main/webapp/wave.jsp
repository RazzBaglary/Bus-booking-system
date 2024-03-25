<style>
.waves {
	position: relative;
	height: 100px;
}

.wave {
	position: absolute;
	top: 0;
	width: 100%;
	height: 100px;
	background: url("img/wave.png");
	left: 0;
	background-size: 1000px 100px;
	display: flex;
	flex-wrap: wrap;
}

.wave#wave1 {
	z-index: 1000;
	opacity: 1;
	bottom: 0;
	animation: animateWave 4s linear infinite;
}

#wave2 {
	z-index: 999;
	opacity: 0.5;
	bottom: 10px;
	animation: animateWave_2 4s linear infinite;
}

#wave3 {
	z-index: 1000;
	opacity: 0.2;
	bottom: 15px;
	animation: animateWave_3 3s linear infinite;
}

#wave4 {
	z-index: 999;
	opacity: 0.7;
	bottom: 20px;
	animation: animateWave_4 3s linear infinite;
}

@keyframes animateWave {
	0% {
		background-position-x: 1000px;
	}
	100% {
		background-position-x: 0px;
	}
}

@keyframes animateWave_2 {
	0% {
		background-position-x: 0px;
	}
	100% {
		background-position-x: 1000px;
	}
}

@keyframes animateWave_3 {
	0% {
		background-position-x: 1000px;
	}
	100% {
		background-position-x: 0px;
	}
}

@keyframes animateWave_4 {
	0% {
		background-position-x: 0px;
	}
	100% {
		background-position-x: 1000px;
	}
}

</style>
<div class="waves">
	<div class="wave" id="wave1"></div>
	<div class="wave" id="wave2"></div>
	<div class="wave" id="wave3"></div>
	<div class="wave" id="wave4"></div>
</div>
