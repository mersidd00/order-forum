FROM n8nio/n8n:latest

# يمكنك إضافة ملفات workflow هنا إذا تريد استيرادها تلقائيًا
# لكن لتبسيط الأمر، سنشغل n8n فقط.
WORKDIR /data
COPY order.json /data/order.json

# تعيين متغير بيئة لتشغيل n8n (اختياري)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=Morata05!

# فتح المنفذ 5678 (المنفذ الافتراضي لـ n8n)
EXPOSE 5678

CMD ["n8n", "start"]
