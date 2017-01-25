.class public final Lcom/genie_connect/android/db/config/EmailMyEvent;
.super Ljava/lang/Object;
.source "EmailMyEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/EmailMyEvent$13;,
        Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    }
.end annotation


# static fields
.field private static final TRUE:Ljava/lang/String; = "TRUE"


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/EmailMyEvent;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/genie_connect/android/db/config/EmailMyEvent;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/android/db/config/EmailMyEvent;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/genie_connect/android/db/config/EmailMyEvent;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/genie_connect/android/db/config/EmailMyEvent;->cursorToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static cursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v0, "param":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 262
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 263
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-interface {p0}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 272
    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_2
    invoke-static {p0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getSubsessionToEmailWidget(JZ)Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    .locals 1
    .param p1, "namespace"    # J
    .param p3, "loggedIn"    # Z

    .prologue
    .line 67
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/genie_connect/android/db/config/EmailMyEvent$1;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;ZJ)V

    .line 81
    .local v0, "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    return-object v0
.end method

.method public getToEmailWidget(Lcom/genie_connect/android/db/config/GenieWidget;JZ)Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    .locals 4
    .param p1, "widget"    # Lcom/genie_connect/android/db/config/GenieWidget;
    .param p2, "namespace"    # J
    .param p4, "loggedIn"    # Z

    .prologue
    .line 87
    sget-object v1, Lcom/genie_connect/android/db/config/EmailMyEvent$13;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 247
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$12;

    invoke-direct {v0, p0, p1}, Lcom/genie_connect/android/db/config/EmailMyEvent$12;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;Lcom/genie_connect/android/db/config/GenieWidget;)V

    .line 255
    .local v0, "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :goto_0
    return-object v0

    .line 89
    .end local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :pswitch_0
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$2;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/genie_connect/android/db/config/EmailMyEvent$2;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;ZJ)V

    .line 106
    .restart local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    goto :goto_0

    .line 108
    .end local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :pswitch_1
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$3;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/genie_connect/android/db/config/EmailMyEvent$3;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;ZJ)V

    .line 122
    .restart local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    goto :goto_0

    .line 124
    .end local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :pswitch_2
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$4;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/genie_connect/android/db/config/EmailMyEvent$4;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;ZJ)V

    .line 138
    .restart local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    goto :goto_0

    .line 140
    .end local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :pswitch_3
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$5;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/genie_connect/android/db/config/EmailMyEvent$5;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;ZJ)V

    .line 154
    .restart local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    goto :goto_0

    .line 156
    .end local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :pswitch_4
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$6;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/genie_connect/android/db/config/EmailMyEvent$6;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;ZJ)V

    .line 170
    .restart local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    goto :goto_0

    .line 172
    .end local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :pswitch_5
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$7;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/genie_connect/android/db/config/EmailMyEvent$7;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;ZJ)V

    .line 186
    .restart local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    goto :goto_0

    .line 188
    .end local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :pswitch_6
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$8;

    invoke-direct {v0, p0, p4}, Lcom/genie_connect/android/db/config/EmailMyEvent$8;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;Z)V

    .line 201
    .restart local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    goto :goto_0

    .line 203
    .end local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :pswitch_7
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$9;

    invoke-direct {v0, p0, p4}, Lcom/genie_connect/android/db/config/EmailMyEvent$9;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;Z)V

    .line 215
    .restart local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    goto :goto_0

    .line 217
    .end local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :pswitch_8
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$10;

    invoke-direct {v0, p0, p4}, Lcom/genie_connect/android/db/config/EmailMyEvent$10;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;Z)V

    .line 229
    .restart local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    goto :goto_0

    .line 231
    .end local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    :pswitch_9
    new-instance v0, Lcom/genie_connect/android/db/config/EmailMyEvent$11;

    invoke-direct {v0, p0, p4}, Lcom/genie_connect/android/db/config/EmailMyEvent$11;-><init>(Lcom/genie_connect/android/db/config/EmailMyEvent;Z)V

    .line 245
    .restart local v0    # "e":Lcom/genie_connect/android/db/config/EmailMyEvent$Emailer;
    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
