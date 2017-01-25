.class public interface abstract Lcom/genie_connect/common/db/model/PlayerGame$PlayerGamesSyncableFields;
.super Ljava/lang/Object;
.source "PlayerGame.java"

# interfaces
.implements Lcom/genie_connect/common/db/entityfactory/EGFields$SyncableEntityFieldsLongKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/PlayerGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerGamesSyncableFields"
.end annotation


# static fields
.field public static final GAME:Ljava/lang/String; = "game"

.field public static final PLAYER_ACHIEVEMENTS:Ljava/lang/String; = "playerAchievements"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLAYER_TROPHIES:Ljava/lang/String; = "playerTrophies"

.field public static final TOTAL_GAME_POINTS:Ljava/lang/String; = "totalGamePoints"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VISITOR:Ljava/lang/String; = "visitor"
