
const cn = {
    host: 'recoverycenterlocator.cnho1h3hnv8t.us-east-2.rds.amazonaws.com',
    port: 5432,
    database: 'recoverycenterlocator',
    user: 'recoveryMaster',
    password: 'MinedMinds'
};
const pgp = require('pg-promise')();

module.exports = {
    getClient: function () {
        if(!this._client)
        {
            this._client = pgp(cn);
        }
        return this._client;
    }


};