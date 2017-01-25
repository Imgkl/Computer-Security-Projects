.class public Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
.super Ljava/lang/Object;
.source "InteractiveHall.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final COMPATIBILITY_HALL_ID:J = -0x1L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private colour:I

.field private final compatibility:Z

.field private id:J

.field private name:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private rotation:D

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall$1;

    invoke-direct {v0}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall$1;-><init>()V

    sput-object v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->rotation:D

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 240
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->name:Ljava/lang/String;

    .line 241
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->prefix:Ljava/lang/String;

    .line 242
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->x:F

    .line 243
    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->y:F

    .line 244
    const-string/jumbo v1, "z"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->z:F

    .line 245
    const-string v1, "colour"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->colour:I

    .line 246
    const-string v1, "rotation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->rotation:D

    .line 248
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->id:J

    .line 249
    const-string v1, "compatibility"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->compatibility:Z

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->rotation:D

    .line 223
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->name:Ljava/lang/String;

    .line 224
    iput-wide p2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->id:J

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->compatibility:Z

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F
    .param p6, "colour"    # I
    .param p7, "compatibility"    # Z

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->rotation:D

    .line 185
    iput-object p1, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->name:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->prefix:Ljava/lang/String;

    .line 187
    iput p3, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->x:F

    .line 188
    iput p4, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->y:F

    .line 189
    iput p5, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->z:F

    .line 190
    iput p6, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->colour:I

    .line 191
    iput-boolean p7, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->compatibility:Z

    .line 192
    if-eqz p7, :cond_0

    .line 193
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->id:J

    .line 195
    :cond_0
    return-void
.end method

.method public static getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # J
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 134
    const-wide/16 v0, 0x271f

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 135
    const-string v0, "n"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$color;->map_booth_fill_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 166
    :goto_0
    return v0

    .line 138
    :cond_0
    const-string v0, "s"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$color;->map_booth_fill_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 141
    :cond_1
    const-string/jumbo v0, "vs"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$color;->map_booth_fill_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 145
    :cond_2
    const-wide/16 v0, 0x2b06

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 146
    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$color;->map_booth_fill_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 149
    :cond_3
    const-string v0, "2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$color;->map_booth_fill_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 152
    :cond_4
    const-string v0, "3"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$color;->map_booth_fill_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 155
    :cond_5
    const-string v0, "4"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$color;->map_booth_fill_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 158
    :cond_6
    const-string v0, "5"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$color;->map_booth_fill_5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 161
    :cond_7
    const-string v0, "6"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$color;->map_booth_fill_6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_0

    .line 166
    :cond_8
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getDefaultHall(Landroid/content/Context;J)Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # J

    .prologue
    const/4 v7, 0x1

    const/high16 v3, 0x44fa0000    # 2000.0f

    const/4 v5, 0x0

    .line 172
    const-wide/16 v0, 0x5623

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "Floorplans"

    const-string v2, ""

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/eventgenie/android/R$color;->map_booth_fill_default:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    .line 179
    :goto_0
    return-object v0

    .line 175
    :cond_0
    const-wide/32 v0, 0x18aa9

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "Floorplans"

    const-string v2, ""

    const/high16 v3, 0x442f0000    # 700.0f

    const/high16 v4, 0x443e0000    # 760.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/eventgenie/android/R$color;->map_booth_fill_default:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInteractiveHalls(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 67
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    .local v2, "hallMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;>;"
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    .line 69
    .local v0, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/access/DbMaps;->getMaps(I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    .line 71
    .local v3, "halls":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v3}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v4

    .line 74
    .local v4, "hasData":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 75
    new-instance v1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v5, "name"

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-interface {v3, v6}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Luk/co/alt236/easycursor/EasyCursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v1, v5, v6, v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;J)V

    .line 79
    .local v1, "hall":Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    const-string v5, "cameraX"

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getLong(I)J

    move-result-wide v6

    long-to-float v5, v6

    add-float/2addr v5, v10

    iput v5, v1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->x:F

    .line 80
    const-string v5, "cameraY"

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getLong(I)J

    move-result-wide v6

    long-to-float v5, v6

    add-float/2addr v5, v10

    iput v5, v1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->y:F

    .line 81
    const-string v5, "cameraZ"

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getLong(I)J

    move-result-wide v6

    long-to-float v5, v6

    add-float/2addr v5, v10

    iput v5, v1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->z:F

    .line 82
    const-string v5, "rotationOffset"

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->getLong(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/16 v8, 0x0

    add-double/2addr v6, v8

    iput-wide v6, v1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->rotation:D

    .line 83
    const-string v5, "colour"

    invoke-interface {v3, v5}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->tryColour(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->colour:I

    .line 85
    iget-object v5, v1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v3}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v4

    goto :goto_0

    .line 88
    .end local v1    # "hall":Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;
    :cond_0
    invoke-static {v3}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 90
    return-object v2
.end method

.method public static getInteractiveHalls(Landroid/content/Context;J)Ljava/util/LinkedHashMap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "namespace"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;",
            ">;"
        }
    .end annotation

    .prologue
    const v3, 0x45476000    # 3190.0f

    const v10, 0x44dd4000    # 1770.0f

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 107
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    .local v8, "hallMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;>;"
    const-wide/16 v0, 0x271f

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 111
    const-string v9, "n"

    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "North"

    const-string v2, "n"

    const v4, 0x4410c000    # 579.0f

    const-string v6, "n"

    invoke-static {p0, p1, p2, v6}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v9, "s"

    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "South"

    const-string v2, "s"

    const-string v4, "s"

    invoke-static {p0, p1, p2, v4}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    move v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v9, "vs"

    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "Vehicle Display"

    const-string/jumbo v2, "vs"

    const/high16 v3, 0x44a20000    # 1296.0f

    const-string/jumbo v4, "vs"

    invoke-static {p0, p1, p2, v4}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    move v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_0
    return-object v8

    .line 116
    :cond_0
    const-wide/16 v0, 0x2b06

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 118
    const-string v9, "1"

    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "Hall 1"

    const-string v2, "1"

    const v3, 0x44ab4000    # 1370.0f

    const v4, 0x451b5000    # 2485.0f

    const-string v6, "1"

    invoke-static {p0, p1, p2, v6}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v9, "2"

    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "Hall 2"

    const-string v2, "2"

    const v3, 0x446d8000    # 950.0f

    const v4, 0x44bb8000    # 1500.0f

    const-string v6, "2"

    invoke-static {p0, p1, p2, v6}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v9, "3"

    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "Hall 3"

    const-string v2, "3"

    const v3, 0x44c1c000    # 1550.0f

    const/high16 v4, 0x44160000    # 600.0f

    const-string v6, "3"

    invoke-static {p0, p1, p2, v6}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v9, "4"

    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "Hall 4"

    const-string v2, "4"

    const v3, 0x44b22000    # 1425.0f

    const/high16 v4, 0x43960000    # 300.0f

    const-string v6, "4"

    invoke-static {p0, p1, p2, v6}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v9, "5"

    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "Hall 5"

    const-string v2, "5"

    const v3, 0x44f88000    # 1988.0f

    const v4, 0x44ae4000    # 1394.0f

    const-string v6, "5"

    invoke-static {p0, p1, p2, v6}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v9, "6"

    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    const-string v1, "Hall 6"

    const-string v2, "6"

    const v3, 0x4546c000    # 3180.0f

    const/high16 v4, 0x445c0000    # 880.0f

    const-string v6, "6"

    invoke-static {p0, p1, p2, v6}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;-><init>(Ljava/lang/String;Ljava/lang/String;FFFIZ)V

    invoke-virtual {v8, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 126
    :cond_1
    invoke-static {p0}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getInteractiveHalls(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public static isThisFromThisHall(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;J)Z
    .locals 7
    .param p0, "mapItem"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .param p1, "hallId"    # J

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 276
    if-nez p0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getHallId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 280
    :cond_3
    cmp-long v2, p1, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static tryColour(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colour"    # Ljava/lang/String;

    .prologue
    const v2, 0x106000d

    .line 94
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)I
    .locals 2
    .param p1, "another"    # Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->compareTo(Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public getColour()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->colour:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->y:F

    return v0
.end method

.method public isCompatibility()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->compatibility:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "name"

    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "prefix"

    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v1, "x"

    iget v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->x:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 258
    const-string/jumbo v1, "y"

    iget v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 259
    const-string/jumbo v1, "z"

    iget v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->z:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 260
    const-string v1, "colour"

    iget v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->colour:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v1, "rotation"

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->rotation:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 263
    const-string v1, "id"

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 264
    const-string v1, "compatibility"

    iget-boolean v2, p0, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->compatibility:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 266
    return-void
.end method
