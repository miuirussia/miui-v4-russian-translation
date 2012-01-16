.class Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# instance fields
.field final synthetic gm:Lcom/android/providers/contacts/T9SearchSupport;

.field public vV:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 1
    .parameter

    .prologue
    .line 2737
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2738
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->vV:Ljava/util/HashMap;

    .line 2739
    return-void
.end method


# virtual methods
.method a(JLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->vV:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->vV:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->vV:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast p3, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    return-void
.end method

.method apply()V
    .locals 9

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->vV:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2747
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2748
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->vV:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;

    .line 2749
    iget-object v5, v0, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;->mData:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;->ov:J

    invoke-static {v5, v6, v7}, Lcom/android/providers/contacts/T9SearchSupport;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 2750
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v6}, Lcom/android/providers/contacts/T9SearchSupport;->d(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;->mData:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2751
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v6}, Lcom/android/providers/contacts/T9SearchSupport;->d(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2752
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v6}, Lcom/android/providers/contacts/T9SearchSupport;->d(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2753
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v6}, Lcom/android/providers/contacts/T9SearchSupport;->d(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2756
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;->mData:Ljava/lang/String;

    invoke-static {v6, v3, v4, v0, v5}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2758
    :catch_0
    move-exception v0

    .line 2759
    const-string v2, "T9SearchSupport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to update data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2760
    throw v0

    .line 2762
    :cond_0
    return-void
.end method
