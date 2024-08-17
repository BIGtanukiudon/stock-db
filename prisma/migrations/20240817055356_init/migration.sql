-- CreateTable
CREATE TABLE "stock_prices" (
    "id" SERIAL NOT NULL,
    "open_price" DOUBLE PRECISION,
    "high_price" DOUBLE PRECISION,
    "low_price" DOUBLE PRECISION,
    "close_price" DOUBLE PRECISION,
    "adjust_close_price" DOUBLE PRECISION,
    "volume" DOUBLE PRECISION,
    "datetime" TIMESTAMP(3) NOT NULL,
    "stock_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "stock_prices_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "stocks" (
    "id" SERIAL NOT NULL,
    "code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "stocks_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "stocks_code_key" ON "stocks"("code");

-- AddForeignKey
ALTER TABLE "stock_prices" ADD CONSTRAINT "stock_prices_stock_id_fkey" FOREIGN KEY ("stock_id") REFERENCES "stocks"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
