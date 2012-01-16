.class Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# instance fields
.field public gl:Ljava/util/HashSet;

.field final synthetic gm:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 1
    .parameter

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2675
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2672
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->gl:Ljava/util/HashSet;

    .line 2676
    return-void
.end method


# virtual methods
.method a(JLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->gl:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2696
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->gl:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2698
    :cond_0
    return-void
.end method

.method apply()V
    .locals 5

    .prologue
    .line 2680
    const-string v0, ","

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->gl:Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 2684
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->b(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM t9_lookup WHERE data_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2686
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->gl:Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/contacts/T9SearchSupport$IdType;->nX:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2691
    return-void

    .line 2687
    :catch_0
    move-exception v0

    .line 2688
    const-string v1, "T9SearchSupport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;->gl:Ljava/util/HashSet;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2689
    throw v0
.end method
