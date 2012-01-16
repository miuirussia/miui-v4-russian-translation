.class Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;
.super Landroid/os/Handler;
.source "T9SearchSupport.java"


# instance fields
.field final synthetic gm:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 0
    .parameter

    .prologue
    .line 2448
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2453
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2448
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2547
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;JLcom/android/providers/contacts/T9SearchSupport$Operation;)V

    .line 2549
    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2550
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 2475
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;

    .line 2477
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2537
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2482
    :pswitch_1
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport;->eT:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->uR:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2483
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport;->eT:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->uR:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2490
    :pswitch_2
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport;->eT:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->uR:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2491
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2493
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport;->bG()V

    .line 2494
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 2495
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->b(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2497
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$Operation;

    .line 2498
    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2502
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->b(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2500
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->b(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2502
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->b(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2506
    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2507
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->c(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto/16 :goto_0

    .line 2518
    :pswitch_3
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport;->eT:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->uR:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2523
    :pswitch_4
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport;->eT:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->uR:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2524
    if-nez v1, :cond_4

    .line 2525
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->a(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 2528
    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->uS:Lcom/android/providers/contacts/T9SearchSupport$Operation;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->apply()V

    .line 2529
    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2530
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->c(Lcom/android/providers/contacts/T9SearchSupport;)V

    goto/16 :goto_0

    .line 2533
    :cond_4
    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler$ThreadOperation;->uS:Lcom/android/providers/contacts/T9SearchSupport$Operation;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
