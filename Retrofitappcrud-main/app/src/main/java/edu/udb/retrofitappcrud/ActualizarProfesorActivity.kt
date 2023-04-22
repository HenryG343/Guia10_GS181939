package edu.udb.retrofitappcrud

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import okhttp3.Credentials
import okhttp3.OkHttpClient
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

class ActualizarProfesorActivity : AppCompatActivity() {
    private lateinit var api: ProfesorApi
    private var profesor: Profesor? = null

    private lateinit var nombreEditText: EditText
    private lateinit var apellidoEditText: EditText
    private lateinit var edadEditText: EditText
    private lateinit var actualizarButton: Button

    // Obtener las credenciales de autenticación
    val auth_username = "admin"
    val auth_password = "admin123"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_actualizar_profesor)

        nombreEditText = findViewById(R.id.nombreEditText)
        apellidoEditText = findViewById(R.id.apellidoEditText)
        edadEditText = findViewById(R.id.edadEditText)
        actualizarButton = findViewById(R.id.actualizarButton)

        // Crea un cliente OkHttpClient con un interceptor que agrega las credenciales de autenticación
        val client = OkHttpClient.Builder()
            .addInterceptor { chain ->
                val request = chain.request().newBuilder()
                    .addHeader("Authorization", Credentials.basic(auth_username, auth_password))
                    .build()
                chain.proceed(request)
            }
            .build()

        // Crea una instancia de Retrofit con el cliente OkHttpClient
        val retrofit = Retrofit.Builder()
            .baseUrl("http://192.168.1.7/api/")
            .addConverterFactory(GsonConverterFactory.create())
            .client(client)
            .build()

        // Crea una instancia del servicio que utiliza la autenticación HTTP básica
        val api = retrofit.create(ProfesorApi::class.java)

        // Obtener el ID del profesor de la actividad anterior
        val profesorId = intent.getIntExtra("profesor_id", -1)
        Log.e("API", "profesorId : $profesorId")

        val nombre = intent.getStringExtra("nombre").toString()
        val apellido = intent.getStringExtra("apellido").toString()
        val edad = intent.getIntExtra("edad", 1)

        nombreEditText.setText(nombre)
        apellidoEditText.setText(apellido)
        edadEditText.setText(edad.toString())

        val profesor = Profesor(0,nombre, apellido, edad)

        /*
        // Realizar una solicitud GET para obtener el profesor correspondiente al ID
        api.obtenerProfesorPorId(profesorId).enqueue(object : Callback<Profesor> {
            override fun onResponse(call: Call<Profesor>, response: Response<Profesor>) {
                if (response.isSuccessful && response.body() != null) {
                    // Si la solicitud es exitosa, guardar el objeto Profesor en la variable correspondiente
                    profesor = response.body()
                    // Actualizar los campos de texto en la interfaz de usuario con los datos del profesor
                    nombreEditText.setText(profesor?.nombre)
                    apellidoEditText.setText(profesor?.apellido)
                    edadEditText.setText(profesor?.edad.toString())
                }
                val error = response.errorBody()?.string()
                Log.e("API", "Error : $error")
            }

            override fun onFailure(call: Call<Profesor>, t: Throwable) {
                // Si la solicitud falla, mostrar un mensaje de error en un Toast
                Log.e("API", "t : $t")
                Toast.makeText(this@ActualizarProfesorActivity, "Error al obtener el profesor", Toast.LENGTH_SHORT).show()
            }
        })
         */


        // Configurar el botón de actualización
        actualizarButton.setOnClickListener {
            if (profesor != null) {
                // Crear un nuevo objeto Profesor con los datos actualizados
                val profesorActualizado = Profesor(
                    profesorId,
                    nombreEditText.text.toString(),
                    apellidoEditText.text.toString(),
                    edadEditText.text.toString().toInt()
                )
                Log.e("API", "profesorActualizado : $profesorActualizado")
                // Realizar una solicitud PUT para actualizar el objeto Profesor
                api.actualizarProfesor(profesorId, profesorActualizado).enqueue(object :
                    Callback<Profesor> {
                    override fun onResponse(call: Call<Profesor>, response: Response<Profesor>) {
                        if (response.isSuccessful && response.body() != null) {
                            // Si la solicitud es exitosa, mostrar un mensaje de éxito en un Toast
                            Toast.makeText(this@ActualizarProfesorActivity, "Profesor actualizado correctamente", Toast.LENGTH_SHORT).show()
                            // Finalizar la actividad
                            finish()
                        }
                        val error = response.errorBody()?.string()
                        Log.e("API", "Error actualizar profesor: $error")
                    }

                    override fun onFailure(call: Call<Profesor>, t: Throwable) {
                        // Si la solicitud falla, mostrar un mensaje de error en un Toast
                        Log.e("API", "onFailure : $t")
                        Toast.makeText(this@ActualizarProfesorActivity, "Error al actualizar el profesor", Toast.LENGTH_SHORT).show()
                    }
                })
            }
        }
    }
}