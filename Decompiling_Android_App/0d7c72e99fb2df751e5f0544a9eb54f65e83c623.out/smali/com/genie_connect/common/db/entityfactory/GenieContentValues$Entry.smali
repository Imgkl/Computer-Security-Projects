.class public Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;
.super Ljava/lang/Object;
.source "GenieContentValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/entityfactory/GenieContentValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

.field public type:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;Ljava/lang/Object;Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;)V
    .locals 0
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "type"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->this$0:Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->value:Ljava/lang/Object;

    .line 53
    iput-object p3, p0, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$Entry;->type:Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    .line 54
    return-void
.end method
