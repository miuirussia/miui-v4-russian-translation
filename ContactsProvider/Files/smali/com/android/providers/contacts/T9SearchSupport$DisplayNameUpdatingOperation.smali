.class Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# instance fields
.field final synthetic gm:Lcom/android/providers/contacts/T9SearchSupport;

.field public wk:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 1
    .parameter

    .prologue
    .line 2570
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2571
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2568
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->wk:Ljava/util/HashSet;

    .line 2572
    return-void
.end method


# virtual methods
.method a(JLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->wk:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2598
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->wk:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2600
    :cond_0
    return-void
.end method

.method apply()V
    .locals 6

    .prologue
    .line 2576
    const-string v0, ","

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->wk:Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 2579
    const/4 v2, 0x0

    .line 2581
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->b(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM t9_lookup WHERE contact_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2583
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->wk:Ljava/util/HashSet;

    sget-object v4, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nV:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-static {v0, v3, v4}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 2584
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;->wk:Ljava/util/HashSet;

    sget-object v4, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nV:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-static {v0, v3, v4}, Lcom/android/providers/contacts/T9SearchSupport;->b(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2589
    if-eqz v2, :cond_0

    .line 2590
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2593
    :cond_0
    return-void

    .line 2585
    :catch_0
    move-exception v0

    .line 2586
    :try_start_1
    const-string v3, "T9SearchSupport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to update display name for contacts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2589
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 2590
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method
