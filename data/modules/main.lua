local nk = require('nakama')
nk.logger_info('lua module loaded')

local function healthcheck_rpc(context, payload)
    nk.logger_info('healthcheck RPC called.')
    return nk.json_encode({ ['success'] = true })
end

nk.register_rpc(healthcheck_rpc, 'Healthcheck')