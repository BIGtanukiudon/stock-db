import { StockService } from "$/gen/stock/v1/stock_connect";
import type { ConnectRouter } from "@connectrpc/connect";

export default (router: ConnectRouter) =>
  router.service(StockService, {
    async getStockPrices({ stockCode, startDatetime, endDatetime }) {
      return {
        stockPrices: [],
      };
    },
  });
