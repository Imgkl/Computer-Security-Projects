.class public Lcom/genie_connect/android/db/access/queryparam/AppRefParams;
.super Ljava/lang/Object;
.source "AppRefParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;,
        Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;,
        Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;
    }
.end annotation


# instance fields
.field private mAppIdEquality:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

.field private mAppIdFilter:Ljava/lang/Long;

.field private mFeatured:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

.field private mSearchFilter:Ljava/lang/String;

.field private mTagFilter:Ljava/lang/Long;

.field private mTimePosition:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->UNDEFINED:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    iput-object v0, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mTimePosition:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    .line 8
    sget-object v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->UNDEFINED:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    iput-object v0, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mFeatured:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    .line 78
    return-void
.end method


# virtual methods
.method public getAppIdEquality()Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mAppIdEquality:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    return-object v0
.end method

.method public getAppIdFilter()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mAppIdFilter:Ljava/lang/Long;

    return-object v0
.end method

.method public getSearchFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mSearchFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getTagFilter()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mTagFilter:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimePosition()Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mTimePosition:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    return-object v0
.end method

.method public isFeatured()Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mFeatured:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    return-object v0
.end method

.method public setAppIdFilter(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;Ljava/lang/Long;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;
    .locals 0
    .param p1, "equality"    # Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;
    .param p2, "value"    # Ljava/lang/Long;

    .prologue
    .line 36
    iput-object p2, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mAppIdFilter:Ljava/lang/Long;

    .line 37
    iput-object p1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mAppIdEquality:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    .line 38
    return-object p0
.end method

.method public setFeatured(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;
    .locals 0
    .param p1, "value"    # Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mFeatured:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    .line 43
    return-object p0
.end method

.method public setSearchFilter(Ljava/lang/String;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mSearchFilter:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public setTagFilter(Ljava/lang/Long;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;
    .locals 0
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mTagFilter:Ljava/lang/Long;

    .line 53
    return-object p0
.end method

.method public setTimePosition(Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;
    .locals 0
    .param p1, "value"    # Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mTimePosition:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    .line 58
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppRefParams [mAppIdFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mAppIdFilter:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTagFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mTagFilter:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSearchFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mSearchFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppIdEquality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mAppIdEquality:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mTimePosition:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFeatured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->mFeatured:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
