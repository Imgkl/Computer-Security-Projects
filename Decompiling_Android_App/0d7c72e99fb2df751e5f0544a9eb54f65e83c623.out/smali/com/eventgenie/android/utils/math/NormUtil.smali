.class public Lcom/eventgenie/android/utils/math/NormUtil;
.super Ljava/lang/Object;
.source "NormUtil.java"


# instance fields
.field private final dataHigh:D

.field private final dataLow:D

.field private normalizedHigh:D

.field private normalizedLow:D


# direct methods
.method public constructor <init>(DD)V
    .locals 11
    .param p1, "dataHigh"    # D
    .param p3, "dataLow"    # D

    .prologue
    .line 48
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/eventgenie/android/utils/math/NormUtil;-><init>(DDDD)V

    .line 49
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1
    .param p1, "dataHigh"    # D
    .param p3, "dataLow"    # D
    .param p5, "normalizedHigh"    # D
    .param p7, "normalizedLow"    # D

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataHigh:D

    .line 60
    iput-wide p3, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataLow:D

    .line 61
    iput-wide p5, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedHigh:D

    .line 62
    iput-wide p7, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedLow:D

    .line 63
    return-void
.end method


# virtual methods
.method public denormalize(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataLow:D

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataHigh:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedHigh:D

    iget-wide v4, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataLow:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataHigh:D

    iget-wide v4, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedLow:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedLow:D

    iget-wide v4, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedHigh:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public normalize(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataLow:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataHigh:D

    iget-wide v4, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataLow:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedHigh:D

    iget-wide v4, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedLow:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedLow:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NormUtil [dataHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataHigh:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->dataLow:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", normalizedHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedHigh:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", normalizedLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/eventgenie/android/utils/math/NormUtil;->normalizedLow:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
