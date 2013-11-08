.class public interface abstract Lcom/android/internal/telephony/IWapPushHandler;
.super Ljava/lang/Object;
.source "IWapPushHandler.java"


# virtual methods
.method public abstract getThreadID()J
.end method

.method public abstract handle(Ljava/io/InputStream;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
