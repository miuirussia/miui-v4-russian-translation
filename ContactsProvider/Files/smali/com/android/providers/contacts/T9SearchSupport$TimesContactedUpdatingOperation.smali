.class Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;
.super Lcom/android/providers/contacts/T9SearchSupport$Operation;
.source "T9SearchSupport.java"


# instance fields
.field final synthetic gm:Lcom/android/providers/contacts/T9SearchSupport;

.field public oL:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 1
    .parameter

    .prologue
    .line 2820
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    .line 2821
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;I)V

    .line 2818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->oL:Ljava/util/ArrayList;

    .line 2822
    return-void
.end method


# virtual methods
.method a(JLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->oL:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2847
    return-void
.end method

.method apply()V
    .locals 5

    .prologue
    .line 2831
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->oL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2832
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->f(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2833
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->f(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2836
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0, v2, v3}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2838
    :catch_0
    move-exception v0

    .line 2839
    const-string v1, "T9SearchSupport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to increase times contacted for contacts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;->oL:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2840
    throw v0

    .line 2842
    :cond_0
    return-void
.end method
