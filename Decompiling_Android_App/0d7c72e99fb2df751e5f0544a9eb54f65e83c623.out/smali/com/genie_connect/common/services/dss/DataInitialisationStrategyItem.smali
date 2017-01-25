.class public Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;
.super Ljava/lang/Object;
.source "DataInitialisationStrategyItem.java"


# instance fields
.field private mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mOffset:I

.field private mSize:I

.field private mStartingNewEntity:Z

.field private mTotalAvailable:I


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;IIIZ)V
    .locals 0
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "totalAvailable"    # I
    .param p5, "isStartingNewEntity"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 51
    iput p2, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->mOffset:I

    .line 52
    iput p3, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->mSize:I

    .line 53
    iput p4, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->mTotalAvailable:I

    .line 54
    iput-boolean p5, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->mStartingNewEntity:Z

    .line 55
    return-void
.end method


# virtual methods
.method public getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->mOffset:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->mSize:I

    return v0
.end method

.method public getTotalAvailable()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->mTotalAvailable:I

    return v0
.end method

.method public isStartingNewEntity()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/genie_connect/common/services/dss/DataInitialisationStrategyItem;->mStartingNewEntity:Z

    return v0
.end method
