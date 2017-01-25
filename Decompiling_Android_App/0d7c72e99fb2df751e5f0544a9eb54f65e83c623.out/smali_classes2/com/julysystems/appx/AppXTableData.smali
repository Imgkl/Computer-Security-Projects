.class Lcom/julysystems/appx/AppXTableData;
.super Ljava/lang/Object;
.source "AppXTableData.java"


# instance fields
.field private csvData:Ljava/lang/String;

.field private curRowColumns:[Ljava/lang/String;

.field private currentParseIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/julysystems/appx/AppXTableData;->csvData:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    .line 6
    iput-object v1, p0, Lcom/julysystems/appx/AppXTableData;->curRowColumns:[Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/julysystems/appx/AppXTableData;->csvData:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getColumn(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/julysystems/appx/AppXTableData;->curRowColumns:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/julysystems/appx/AppXTableData;->curRowColumns:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNextRow()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 13
    iget-object v3, p0, Lcom/julysystems/appx/AppXTableData;->csvData:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    iget-object v4, p0, Lcom/julysystems/appx/AppXTableData;->csvData:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 23
    :cond_0
    :goto_0
    return v2

    .line 16
    :cond_1
    iget-object v3, p0, Lcom/julysystems/appx/AppXTableData;->csvData:Ljava/lang/String;

    const-string v4, "~~~~"

    iget v5, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 17
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 20
    iget-object v2, p0, Lcom/julysystems/appx/AppXTableData;->csvData:Ljava/lang/String;

    iget v3, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "row":Ljava/lang/String;
    const-string v2, "\\|{4}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/julysystems/appx/AppXTableData;->curRowColumns:[Ljava/lang/String;

    .line 22
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    .line 23
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXTableData;->curRowColumns:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public seekRow(I)Z
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    iget-object v5, p0, Lcom/julysystems/appx/AppXTableData;->csvData:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    iget-object v6, p0, Lcom/julysystems/appx/AppXTableData;->csvData:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v3

    .line 35
    :cond_1
    iput v3, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "i":I
    :goto_1
    if-le v0, p1, :cond_2

    move v3, v4

    .line 51
    goto :goto_0

    .line 38
    :cond_2
    iget-object v5, p0, Lcom/julysystems/appx/AppXTableData;->csvData:Ljava/lang/String;

    const-string v6, "~~~~"

    iget v7, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 39
    .local v1, "pos":I
    if-ltz v1, :cond_0

    .line 42
    if-ne v0, p1, :cond_3

    .line 43
    iget-object v3, p0, Lcom/julysystems/appx/AppXTableData;->csvData:Ljava/lang/String;

    iget v5, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "row":Ljava/lang/String;
    const-string v3, "\\|{4}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/julysystems/appx/AppXTableData;->curRowColumns:[Ljava/lang/String;

    .line 45
    add-int/lit8 v3, v1, 0x4

    iput v3, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    move v3, v4

    .line 46
    goto :goto_0

    .line 48
    .end local v2    # "row":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v1, 0x4

    iput v5, p0, Lcom/julysystems/appx/AppXTableData;->currentParseIndex:I

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
