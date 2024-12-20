<style>
    .register-card {
        max-width: 500px;
        width: 100%;
        padding: 30px;
        border-radius: 8px;
        background-color: rgba(255, 255, 255, 0.9);
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .button-register {
        background-color: #28a745;
        border: none;
        width: 100%;
    }

    .button-register:hover {
        background-color: #218838;
    }

    .account-check a {
        color: #28a745;
    }

    .account-check a:hover {
        text-decoration: underline;
    }

    .min-vh-100 {
        min-height: 100vh;
    }

    .bg-image {
        background-image: url('assets/bg.png');
        background-size: cover;
        background-position: center;
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        filter: brightness(50%);
        z-index: -1;
    }
</style>

<div class="bg-image"></div>

<div class="d-flex justify-content-center align-items-center min-vh-100">
    <div class="register-card">
        <form method="post" action="redirect.php">
            <h1 class="text-center mb-4 text-success">Verify Account</h1>
            <hr>

            <div class="mb-3">
                <input class="form-control" type="email" name="email" placeholder="Email" required>
            </div>
            <div class="mb-3">
                <input class="form-control" type="text" name="code" placeholder="Enter code" required>
            </div>

            <input type="hidden" name="type" value="verify">

            <button class="btn button-register mb-3" type="submit">VERIFY</button>

            <div class="text-center">
                <strong>Or</strong>
            </div>

            <div class="text-center mt-3">
                Already have an account? <a href="registration.php" class="account-check">SIGN IN</a>
            </div>
        </form>
    </div>
</div>