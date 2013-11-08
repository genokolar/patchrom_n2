.class Lcom/android/internal/telephony/gsm/GSMPhone$1;
.super Ljava/lang/Object;
.source "GSMPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/GSMPhone;->access$000()Landroid/net/LocalServerSocket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v6

    .local v6, sock:Landroid/net/LocalSocket;
    const-string v7, "GSM"

    const-string v8, "HSIC DEBUG : DEBUG SOCKET ACCEPT"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .local v2, inputS:Ljava/io/InputStream;
    const/4 v7, 0x1

    new-array v1, v7, [B

    .local v1, inputData:[B
    const/4 v5, 0x0

    .local v5, retLen:I
    const-string v7, "GSM"

    const-string v8, "HSIC DEBUG : BEFORE READER"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, 0x0

    aget-byte v4, v1, v7

    .local v4, resetType:I
    const-string v7, "GSM"

    const-string v8, "HSIC DEBUG : New connection; Msg:cp_reset, resetting radio"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reset type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    const-string v7, "GSM"

    const-string v8, "===Reset radio ===="

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #inputData:[B
    .end local v2           #inputS:Ljava/io/InputStream;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #resetType:I
    .end local v5           #retLen:I
    .end local v6           #sock:Landroid/net/LocalSocket;
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const-string v7, "GSM"

    const-string v8, "Exception accepting socket"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
