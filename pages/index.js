import Head from 'next/head'


export async function getStaticProps() {
  // fetch list of posts
  const response = await fetch(
    'https://jsonplaceholder.typicode.com/posts?_page=1'
  )
  const postList = await response.json()
  return {
    props: {
      postList,
    },
  }
}

export default function Index() {
  return (
    <main>
      <Head>
        <title>Home page</title>
      </Head>

      <h1>Hello World</h1>

    </main>
  )
}
