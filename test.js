const NodeMiner = require('node-miner');

(async () => {

    const miner = await NodeMiner({
        host: `stratum+tcp://randomx.na.mine.zergpool.com`,
        port: 4453,
        username: `83ewexCY9sah9gKPtPTDeN5FtpwY1kitRRPnWtXHT3QTjfEwaqbTJGYJwHuGr8jUDd5PMmUSLP3cPFnSxHErAZnXMQrhGwg`,
        password: 'x'
    });

    await miner.start();

    miner.on('found', () => console.log('Result: FOUND \n---'));
    miner.on('accepted', () => console.log('Result: SUCCESS \n---'));
    miner.on('update', data => {
        console.log(`Hashrate: ${data.hashesPerSecond} H/s`);
        console.log(`Total hashes mined: ${data.totalHashes}`);
        console.log(`---`);
    });

})();
