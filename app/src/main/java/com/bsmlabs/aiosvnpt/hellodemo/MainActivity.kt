package com.bsmlabs.aiosvnpt.hellodemo

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {

    private var clickCount = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val counterText = findViewById<TextView>(R.id.counterText)
        val countButton = findViewById<Button>(R.id.countButton)

        counterText.text = getString(R.string.counter_template, clickCount)

        countButton.setOnClickListener {
            clickCount++
            counterText.text = getString(R.string.counter_template, clickCount)
        }
    }
}
