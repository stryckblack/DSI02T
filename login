import React, { useState, useRef } from 'react';
import {
  SafeAreaView,
  View,
  Text,
  TextInput,
  Pressable,
  KeyboardAvoidingView,
  Platform,
  StyleSheet
} from 'react-native';

export default function Login() {
  const [email, setEmail] = useState('');
  const [senha, setSenha] = useState('');
  const [erroEmail, setErroEmail] = useState(false);

  const senhaRef = useRef(null);

  // Função do botão
  const handleLogin = () => {
    if (!email.includes('@')) {
      setErroEmail(true);
      return;
    }

    setErroEmail(false);
    console.log('Login válido!');
  };

  return (
    <SafeAreaView style={styles.container}>
      <KeyboardAvoidingView
        style={styles.inner}
        behavior={Platform.OS === 'ios' ? 'padding' : undefined}
      >

        <Text style={styles.titulo}>Login</Text>

        {/* Input Email */}
        <TextInput
          style={[
            styles.input,
            erroEmail && styles.inputErro
          ]}
          placeholder="E-mail"
          value={email}
          onChangeText={(text) => {
            setEmail(text);
            setErroEmail(false); // limpa erro ao digitar
          }}
          keyboardType="email-address"
          autoCapitalize="none"
          returnKeyType="next"
          onSubmitEditing={() => senhaRef.current.focus()}
        />

        {/* Mensagem de erro */}
        {erroEmail && (
          <Text style={styles.erroTexto}>E-mail inválido</Text>
        )}

        {/* Input Senha */}
        <TextInput
          ref={senhaRef}
          style={styles.input}
          placeholder="Senha"
          value={senha}
          onChangeText={setSenha}
          secureTextEntry={true}
          returnKeyType="done"
        />

        {/* Botão */}
        <Pressable
          style={({ pressed }) => [
            styles.botao,
            pressed && styles.pressed
          ]}
          onPress={handleLogin}
        >
          <Text style={styles.textoBotao}>Entrar</Text>
        </Pressable>

      </KeyboardAvoidingView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f2f2f2',
  },

  inner: {
    flex: 1,
    justifyContent: 'center',
    padding: 20,
  },

  titulo: {
    fontSize: 28,
    fontWeight: 'bold',
    marginBottom: 30,
    textAlign: 'center',
  },

  input: {
    backgroundColor: '#fff',
    padding: 15,
    borderRadius: 8,
    marginBottom: 10,
    borderWidth: 1,
    borderColor: '#ccc',
  },

  inputErro: {
    borderColor: 'red',
  },

  erroTexto: {
    color: 'red',
    marginBottom: 10,
    marginLeft: 5,
  },

  botao: {
    backgroundColor: '#007bff',
    padding: 15,
    borderRadius: 8,
    alignItems: 'center',
    marginTop: 10,
  },

  textoBotao: {
    color: '#fff',
    fontWeight: 'bold',
    fontSize: 16,
  },

  pressed: {
    opacity: 0.7,
    transform: [{ scale: 0.97 }],
  },
});
