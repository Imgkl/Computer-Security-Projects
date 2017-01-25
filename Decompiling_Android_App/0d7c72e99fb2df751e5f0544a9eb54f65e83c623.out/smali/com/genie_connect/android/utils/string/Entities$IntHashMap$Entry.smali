.class Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/utils/string/Entities$IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field hash:I

.field next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

.field value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "next"    # Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .prologue
    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput p1, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->hash:I

    .line 1067
    iput-object p3, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->value:Ljava/lang/Object;

    .line 1068
    iput-object p4, p0, Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;->next:Lcom/genie_connect/android/utils/string/Entities$IntHashMap$Entry;

    .line 1069
    return-void
.end method
