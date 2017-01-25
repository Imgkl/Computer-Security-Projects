.class public Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
.super Ljava/lang/Object;
.source "PlayerComparisonRow.java"


# instance fields
.field private final mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private final mEntityId:J

.field private mIsFeatured:Z

.field private mLeftDescription:Ljava/lang/String;

.field private mLeftMaxValue:J

.field private mLeftPlaterId:J

.field private mLeftPlayerGameObject:Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

.field private mLeftPlayerName:Ljava/lang/String;

.field private mLeftProgressValue:J

.field private mRightDescription:Ljava/lang/String;

.field private mRightMaxValue:J

.field private mRightPlayerGameObject:Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

.field private mRightPlayerId:J

.field private mRightPlayerName:Ljava/lang/String;

.field private mRightProgressValue:J

.field private mRowImage:Ljava/lang/String;

.field private mRowImageColour:Ljava/lang/String;

.field private mRowTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)V
    .locals 0
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "entityId"    # J

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 64
    iput-wide p2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mEntityId:J

    .line 65
    return-void
.end method

.method private static normalise(JJJJJ)I
    .locals 12
    .param p0, "dataHigh"    # J
    .param p2, "dataLow"    # J
    .param p4, "normHigh"    # J
    .param p6, "normLow"    # J
    .param p8, "x"    # J

    .prologue
    .line 232
    new-instance v3, Lcom/eventgenie/android/utils/math/NormUtil;

    long-to-double v4, p0

    long-to-double v6, p2

    move-wide/from16 v0, p4

    long-to-double v8, v0

    move-wide/from16 v0, p6

    long-to-double v10, v0

    invoke-direct/range {v3 .. v11}, Lcom/eventgenie/android/utils/math/NormUtil;-><init>(DDDD)V

    move-wide/from16 v0, p8

    long-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/utils/math/NormUtil;->normalize(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method


# virtual methods
.method public getEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getEntityId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mEntityId:J

    return-wide v0
.end method

.method public getLeftDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftMaxValue()J
    .locals 4

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftMaxValue:J

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftProgressValue:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 81
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftProgressValue:J

    .line 83
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftMaxValue:J

    goto :goto_0
.end method

.method public getLeftNormalisedValue()I
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 87
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftProgressValue:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getLeftMaxValue()J

    move-result-wide v0

    const-wide/16 v4, 0x64

    iget-wide v8, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftProgressValue:J

    move-wide v6, v2

    invoke-static/range {v0 .. v9}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->normalise(JJJJJ)I

    move-result v0

    goto :goto_0
.end method

.method public getLeftPlaterId()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftPlaterId:J

    return-wide v0
.end method

.method public getLeftPlayerGameObject()Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftPlayerGameObject:Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    return-object v0
.end method

.method public getLeftPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftPlayerName:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftProgressValue()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftProgressValue:J

    return-wide v0
.end method

.method public getRightDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getRightMaxValue()J
    .locals 4

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightMaxValue:J

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightProgressValue:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 119
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightProgressValue:J

    .line 121
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightMaxValue:J

    goto :goto_0
.end method

.method public getRightNormalisedValue()I
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 125
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightProgressValue:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->getRightMaxValue()J

    move-result-wide v0

    const-wide/16 v4, 0x64

    iget-wide v8, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightProgressValue:J

    move-wide v6, v2

    invoke-static/range {v0 .. v9}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->normalise(JJJJJ)I

    move-result v0

    goto :goto_0
.end method

.method public getRightPlayerGameObject()Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightPlayerGameObject:Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    return-object v0
.end method

.method public getRightPlayerId()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightPlayerId:J

    return-wide v0
.end method

.method public getRightPlayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightPlayerName:Ljava/lang/String;

    return-object v0
.end method

.method public getRightProgressValue()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightProgressValue:J

    return-wide v0
.end method

.method public getRowImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRowImage:Ljava/lang/String;

    return-object v0
.end method

.method public getRowImageColour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRowImageColour:Ljava/lang/String;

    return-object v0
.end method

.method public getRowTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRowTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isFeatured()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mIsFeatured:Z

    return v0
.end method

.method public setFeatured(Z)V
    .locals 0
    .param p1, "isFeatured"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mIsFeatured:Z

    .line 169
    return-void
.end method

.method public setLeftDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftDescription:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setLeftMaxValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftMaxValue:J

    .line 177
    return-void
.end method

.method public setLeftPlayerGameObject(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)V
    .locals 0
    .param p1, "playerGame"    # Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftPlayerGameObject:Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 181
    return-void
.end method

.method public setLeftPlayerId(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftPlaterId:J

    .line 185
    return-void
.end method

.method public setLeftPlayerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftPlayerName:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setLeftProgressValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mLeftProgressValue:J

    .line 193
    return-void
.end method

.method public setRightDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightDescription:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setRightMaxValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightMaxValue:J

    .line 201
    return-void
.end method

.method public setRightPlayerGameObject(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)V
    .locals 0
    .param p1, "playerGame"    # Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightPlayerGameObject:Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 205
    return-void
.end method

.method public setRightPlayerId(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightPlayerId:J

    .line 209
    return-void
.end method

.method public setRightPlayerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightPlayerName:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setRightProgressValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRightProgressValue:J

    .line 217
    return-void
.end method

.method public setRowImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRowImage:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setRowImageColour(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRowImageColour:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setRowTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->mRowTitle:Ljava/lang/String;

    .line 229
    return-void
.end method
