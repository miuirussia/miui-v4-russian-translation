.class Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# instance fields
.field final synthetic gm:Lcom/android/providers/contacts/T9SearchSupport;

.field public hB:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 1
    .parameter

    .prologue
    .line 2642
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2643
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2640
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->hB:Ljava/util/HashSet;

    .line 2644
    return-void
.end method


# virtual methods
.method a(JLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->hB:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->hB:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2665
    :cond_0
    return-void
.end method

.method apply()V
    .locals 5

    .prologue
    .line 2652
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->hB:Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nW:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport;->b(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2658
    return-void

    .line 2653
    :catch_0
    move-exception v0

    .line 2654
    const-string v1, "T9SearchSupport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to insert raw contacts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;->hB:Ljava/util/HashSet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2656
    throw v0
.end method
