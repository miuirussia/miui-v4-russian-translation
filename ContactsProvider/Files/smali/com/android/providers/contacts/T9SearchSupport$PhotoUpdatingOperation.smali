.class Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# instance fields
.field final synthetic gm:Lcom/android/providers/contacts/T9SearchSupport;

.field public vr:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 1
    .parameter

    .prologue
    .line 2779
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2780
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2777
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->vr:Ljava/util/HashMap;

    .line 2781
    return-void
.end method


# virtual methods
.method a(JLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->vr:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2808
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->vr:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2810
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->vr:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2811
    return-void
.end method

.method apply()V
    .locals 8

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->vr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2790
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

    .line 2791
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->vr:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2792
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->e(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2793
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->e(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2794
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->e(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2797
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2799
    :catch_0
    move-exception v0

    .line 2800
    const-string v2, "T9SearchSupport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to update the photo id for contacts: "

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

    .line 2801
    throw v0

    .line 2803
    :cond_0
    return-void
.end method
