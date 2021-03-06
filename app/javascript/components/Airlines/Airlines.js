import axios from 'axios'
import React, {useState, useEffect, Fragment} from 'react'


const Airlines = () => {
  const  [airlines, setAirlines] = useState([])

  useEffect(() => {
    // get all of airlines form api
    // update airlines in our state

    axios.get('./api/v1/airlines.json')
    .then( resp => {
      setAirlines(resp.data.data)
    })
    .catch( resp => consol.log(resp))
  }, [airlines.length])

  const list = airlines.map( item => {
    return(<li key={item.attributes.name}>{item.attributes.name}</li>)
  })

  return (
    <Fragment>
      <div className='home'>
        <div className='header'>
          <h1>OpenFlight</h1>
          <div className='subheader'>Honest, unbiased airline reviews</div>
        </div>
        <div className='grid'>
          <div>{list}</div>
        </div>
      </div>
    </Fragment>
  )
}

export default Airlines
