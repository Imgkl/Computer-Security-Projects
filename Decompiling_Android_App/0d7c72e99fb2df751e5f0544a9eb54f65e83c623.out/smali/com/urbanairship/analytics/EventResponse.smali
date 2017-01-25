.class Lcom/urbanairship/analytics/EventResponse;
.super Ljava/lang/Object;
.source "EventResponse.java"


# instance fields
.field private final response:Lcom/urbanairship/http/Response;


# direct methods
.method public constructor <init>(Lcom/urbanairship/http/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/urbanairship/http/Response;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/urbanairship/analytics/EventResponse;->response:Lcom/urbanairship/http/Response;

    .line 42
    return-void
.end method


# virtual methods
.method public getMaxBatchSize()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 76
    iget-object v1, p0, Lcom/urbanairship/analytics/EventResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/urbanairship/analytics/EventResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "X-UA-Max-Batch"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 78
    .local v0, "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7d000

    invoke-static {v1, v3, v2}, Lcom/urbanairship/util/UAMathUtil;->constrain(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 84
    .end local v0    # "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getMaxTotalSize()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/16 v3, 0x2800

    .line 59
    iget-object v1, p0, Lcom/urbanairship/analytics/EventResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/urbanairship/analytics/EventResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "X-UA-Max-Total"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 61
    .local v0, "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 62
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x500000

    invoke-static {v1, v3, v2}, Lcom/urbanairship/util/UAMathUtil;->constrain(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 67
    .end local v0    # "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getMaxWait()Ljava/lang/Integer;
    .locals 4

    .prologue
    const v3, 0x240c8400

    .line 93
    iget-object v1, p0, Lcom/urbanairship/analytics/EventResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/urbanairship/analytics/EventResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "X-UA-Max-Wait"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 95
    .local v0, "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 96
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x48190800

    invoke-static {v1, v3, v2}, Lcom/urbanairship/util/UAMathUtil;->constrain(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 101
    .end local v0    # "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getMinBatchInterval()Ljava/lang/Integer;
    .locals 4

    .prologue
    const v3, 0xea60

    .line 110
    iget-object v1, p0, Lcom/urbanairship/analytics/EventResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/urbanairship/analytics/EventResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v1}, Lcom/urbanairship/http/Response;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "X-UA-Min-Batch-Interval"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 112
    .local v0, "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x240c8400

    invoke-static {v1, v3, v2}, Lcom/urbanairship/util/UAMathUtil;->constrain(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 118
    .end local v0    # "headerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/urbanairship/analytics/EventResponse;->response:Lcom/urbanairship/http/Response;

    invoke-virtual {v0}, Lcom/urbanairship/http/Response;->getStatus()I

    move-result v0

    return v0
.end method
