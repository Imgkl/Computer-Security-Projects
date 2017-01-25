.class public Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;
.super Ljava/lang/Object;
.source "BadgeCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$15;
    }
.end annotation


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method


# virtual methods
.method public getBadgeForWidget(Lcom/genie_connect/android/db/config/GenieWidget;J)Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    .locals 4
    .param p1, "widget"    # Lcom/genie_connect/android/db/config/GenieWidget;
    .param p2, "namespace"    # J

    .prologue
    .line 54
    sget-object v1, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$15;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 191
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$14;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$14;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;)V

    .line 199
    .local v0, "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :goto_0
    return-object v0

    .line 56
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_0
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$1;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;J)V

    .line 62
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 64
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_1
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$2;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;J)V

    .line 70
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 72
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_2
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$3;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;J)V

    .line 78
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 80
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_3
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$4;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;J)V

    .line 86
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 88
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_4
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$5;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;J)V

    .line 94
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 96
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_5
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$6;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$6;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;)V

    .line 132
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 134
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_6
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$7;

    invoke-direct {v0, p0, p2, p3}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$7;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;J)V

    .line 140
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 142
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_7
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$8;

    invoke-direct {v0, p0, p2, p3}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$8;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;J)V

    .line 148
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 150
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_8
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$9;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$9;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;)V

    .line 156
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 158
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_9
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$10;

    invoke-direct {v0, p0, p2, p3}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$10;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;J)V

    .line 164
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 166
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_a
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$11;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$11;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;)V

    .line 172
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 174
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_b
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$12;

    invoke-direct {v0, p0, p2, p3}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$12;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;J)V

    .line 180
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 182
    .end local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    :pswitch_c
    new-instance v0, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$13;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/db/config/badgecount/BadgeCounter$13;-><init>(Lcom/genie_connect/android/db/config/badgecount/BadgeCounter;)V

    .line 189
    .restart local v0    # "bc":Lcom/genie_connect/android/db/config/badgecount/BadgeCount;
    goto :goto_0

    .line 54
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
