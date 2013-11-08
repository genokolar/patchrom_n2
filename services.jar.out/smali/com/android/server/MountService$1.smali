.class Lcom/android/server/MountService$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->handleResetVolumeFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    .local v1, count:I
    new-array v11, v1, [Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .local v7, paths:[Ljava/lang/String;
    new-array v10, v1, [Ljava/lang/String;

    .local v10, states:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v11

    aget-object v13, v7, v4

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    .local v2, device_sd_path_rc:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    :try_start_2
    aget-object v6, v7, v4

    .local v6, path:Ljava/lang/String;
    aget-object v9, v10, v4

    .local v9, state:Ljava/lang/String;
    const-string v11, "/mnt/sdcard"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "unmounted"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v11, v6}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v11, "MountService"

    const-string v12, "Boot-time mount failed (%d)"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6           #path:Ljava/lang/String;
    .end local v9           #state:Ljava/lang/String;
    :cond_1
    :goto_2
    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    new-array v10, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v11

    aget-object v13, v7, v4

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v10, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v1           #count:I
    .end local v2           #device_sd_path_rc:I
    .end local v4           #i:I
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7           #paths:[Ljava/lang/String;
    .end local v10           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v3

    .local v3, ex:Ljava/lang/Exception;
    const-string v11, "MountService"

    const-string v12, "Boot-time mount exception"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3           #ex:Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-void

    .restart local v1       #count:I
    .restart local v2       #device_sd_path_rc:I
    .restart local v4       #i:I
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #paths:[Ljava/lang/String;
    .restart local v9       #state:Ljava/lang/String;
    .restart local v10       #states:[Ljava/lang/String;
    :cond_3
    :try_start_6
    const-string v11, "shared"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v11, v12, v6, v13, v14}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .end local v6           #path:Ljava/lang/String;
    .end local v9           #state:Ljava/lang/String;
    :cond_5
    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v1, :cond_8

    :try_start_8
    aget-object v6, v7, v4

    .restart local v6       #path:Ljava/lang/String;
    aget-object v9, v10, v4

    .restart local v9       #state:Ljava/lang/String;
    const-string v11, "/mnt/sdcard2"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "unmounted"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v11, v6}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v8

    .local v8, rc:I
    if-eqz v8, :cond_6

    const-string v11, "MountService"

    const-string v12, "Boot-time mount failed (%d)"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .end local v8           #rc:I
    :cond_6
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v6           #path:Ljava/lang/String;
    .end local v9           #state:Ljava/lang/String;
    :catchall_1
    move-exception v11

    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v11

    .restart local v6       #path:Ljava/lang/String;
    .restart local v9       #state:Ljava/lang/String;
    :cond_7
    const-string v11, "shared"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x7

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v11, v12, v6, v13, v14}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_6

    .end local v6           #path:Ljava/lang/String;
    .end local v9           #state:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static {v11}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Z

    move-result v11

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v11, v12, v13, v14, v15}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v11}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v12, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v11, v12}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static {v11, v12}, Lcom/android/server/MountService;->access$1502(Lcom/android/server/MountService;Z)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_4
.end method
